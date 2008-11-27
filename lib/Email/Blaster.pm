package Email::Blaster;

use strict;
use warnings 'all';
use Carp 'confess';
use forks;
use forks::shared;
use POSIX 'ceil';
use Email::Blaster::ConfigLoader;
use Email::Blaster::Event;
use Email::Blaster::Event::Type;
use Email::Blaster::Transmission;
use HTTP::Date 'time2iso';
use Time::HiRes qw( gettimeofday usleep );
use Digest::MD5 'md5_hex';

our $VERSION = '0.0001_02';
our $InstanceClass = __PACKAGE__;
our $instance;
my @progress : shared = ( );
my $blaster_key = md5_hex( $$ . "" . { } . time() );


#==============================================================================
sub new
{
  my ($class) = @_;
  
  no strict 'refs';
  return ${"$InstanceClass\::instance"} if ${"$InstanceClass\::instance"};
  
  $class = ref($class) ? ref($class) : $class;
  
  my $s = ${"$InstanceClass\::instance"} = bless {
    config => Email::Blaster::ConfigLoader->load(),
    continue_running => 1,
  }, $class;
  $s->config->_init;
  
  # Load up our assembler:
  $s->_load_class( $s->config->message_assembler );
  $s->{message_assembler} = $s->config->message_assembler->new( );
  
  # Load up our sender:
  $s->_load_class( $s->config->mail_sender );
  $s->{mail_sender} = $s->config->mail_sender->new( );
  
  return $s;
}# end new()


#==============================================================================
sub run
{
  my ($s) = @_;
  
  # Wait until we get a new transmission, then process it:
  while( $s->continue_running )
  {
    my $trans;
    warn "Waiting for a transmission...\n";
    unless( $trans = $s->find_new_transmission() )
    {
      sleep(5);
      next;
    }# end unless();
    
    @progress = ( );
    warn "Processing $trans...\n";
    $trans->is_started( 1 );
    $trans->started_on( time2iso() );
    $trans->blaster_key( $blaster_key );
    $trans->update();
    
    # Call our initializer(s):
    $s->handle_event(
      type => 'init_transmission',
      transmission_id => $trans->id
    );
    
    # Spread the workload across some workers:
    my @workers = ( );
    my @sendlogs = $trans->sendlogs;
    my @bulk_sendlogs = grep { ! $_->throttled_domain } @sendlogs;
    push @workers, $s->_init_throttled_workers( \@bulk_sendlogs );
    
    my $boss = threads->create(sub {
      while( $s->continue_running && grep { $_->is_running } @workers )
      {
        my $running = scalar( grep { $_->is_running } @workers);
        my ( $ids, $processed );
        SCOPE: {
          lock(@progress);
          $processed = scalar(@progress);
          $ids = [ @progress ];
          @progress = ( );
        };
        $s->mark_sendlogs_as_finished( $ids ) if @$ids;
        warn "Waiting for $running workers - Finished $processed this round...\n";
        sleep(1);
      }# end while()
    });
    
    # Wait for our workers to finish:
    $_->join foreach ( $boss, @workers );
    
    # Don't forget any straggler sendlogs:
    warn "Finished @{[ scalar(@progress) ]} in cleanup...\n";
    $s->mark_sendlogs_as_finished( [ @progress ] ) if @progress;
    
    # Mark it as completed:
    $trans->is_completed( 1 );
    $trans->completed_on( time2iso() );
    $trans->update();
    
  }# end while()
}# end run()


#==============================================================================
sub send_message
{
  my ($s, $sendlog, $transmission) = @_;
  
  my $msg = $s->message_assembler->assemble(
    $s,
    $sendlog,
    $transmission
  );
  
  $s->mail_sender->send_message(
    blaster       => $s,
    subject       => $msg->{subject},
    content       => $msg->{content},
    transmission  => $transmission,
    sendlog       => $sendlog,
  );
}# end send_message()


#==============================================================================
sub _init_throttled_workers
{
  my ($s, $bulk_sendlogs) = @_;
  
  my @workers = ( );
  my $per_worker = ceil( scalar(@$bulk_sendlogs) / $s->config->max_bulk_workers );
  while( my @chunk = splice(@$bulk_sendlogs, 0, $per_worker) )
  {
    push @workers, threads->create(sub {
      my $sendlogs = shift;
      my $trans;
      map {
        $trans ||= $_->transmission;
        my $queued_as = $s->send_message(
          $_,
          $trans
        );
        lock( @progress );
        push @progress, $_->id . ':' . $queued_as;
      } @$sendlogs;
      
      return;
    }, \@chunk);
  }# end while()
  
  return @workers;
}# end _init_throttled_workers()


#==============================================================================
sub mark_sendlogs_as_finished
{
  my ($s, $items) = @_;
  
  my $sth = Email::Blaster::Model->db_Main->prepare(<<"SQL");
UPDATE sendlogs SET
  is_sent = 1,
  queued_as = ?,
  sent_on = '@{[ time2iso ]}'
WHERE sendlog_id  = ?
SQL
  foreach my $item ( @$items )
  {
    my ($id, $queued_as) = split /:/, $item;
    $sth->execute( $queued_as, $id );
  }# end foreach()
  $sth->finish();
}# end mark_sendlogs_as_finished()


#==============================================================================
sub find_new_transmission
{
  my ($s) = @_;
  
  my $sth = Email::Blaster::Transmission->db_Main->prepare(<<"SQL");
SELECT *
FROM transmissions
WHERE is_queued = 1
AND (
  is_started = 0
)
OR (
  is_started = 1
  AND is_completed = 0
  AND blaster_key <> ?
)
ORDER BY queued_on DESC
LIMIT 0, 1
SQL
  $SIG{__DIE__} = \&Carp::confess;
  $sth->execute( $blaster_key );
  return unless my ($trans) = Email::Blaster::Transmission->sth_to_objects( $sth );
  
  return $trans;
}# end find_new_transmission()


#==============================================================================
sub current { $instance || shift->new }
sub config  { shift->{config} }
sub message_assembler { shift->{message_assembler} }
sub mail_sender { shift->{mail_sender} }


#==============================================================================
sub continue_running
{
  my ($s) = shift;
  
  @_ ? $s->{continue_running} = shift : $s->{continue_running};
}# end continue_running()


#==============================================================================
sub handle_event
{
  my ($s, %args) = @_;
  
  my ($type) = Email::Blaster::Event::Type->search( event_type_name => delete($args{type}) );

  my $event = Email::Blaster::Event->create(
    %args,
    event_type_id => $type->id,
  );
  
  my $group = $type->event_type_name;
  map {
    $s->_load_class( $_ );
    $_->new->run( $event );
  } @{ $s->config->handlers->$group->handler };
  
  1;
}# end handle_event()


#==============================================================================
sub _load_class
{
  my ($s, $class) = @_;
  
  (my $file = "$class.pm") =~ s/::/\//g;
  eval { require $file unless $INC{$file}; 1 } or confess "Cannot load $class: $@";
}# end _load_class()


1;# return true:

__END__

=pod

=head1 NAME

Email::Blaster - Scalable Mass Email System

=head1 SYNOPSIS

  % mysql -u xxx -p
  mysql> create database email_blaster;
  mysql> quit;
  % mysql -u xxx -p email_blaster < sbin/email_blaster.sql

Edit the config file:

  % vi conf/email-blaster-config.xml

Insert some fake data to play with:

  % perl fake-transmission.pl

Run the bulk blaster:

  % perl bulk_blaster.pl

Run the *throttled* blaster:

  % perl throttled_blaster.pl

=head1 DESCRIPTION

Email::Blaster is the latest in a B<long, long> line of mass-emailer systems I
have written since 2002.

This version has many features.

=over 4

=item * Testing mode.

Send a few messages to yourself before you turn on the firehose.

=item * Domain-based throttling with hourly limits.

Never get blacklisted again because of email flooding.

=item * Configurable (and subclassable) behaviors and components.

If configuration alone doesn't get you what you want, you can always subclass
something (i.e. MailSender or MaillogWatcher) to get the desired behavior.

=item * Scales Out Well.

Designed to spread the work out across many, many, many servers.  If your email
list has 1Million subscribers, you could *reliably* send your messages to them
in a matter of minutes.

Add more servers, get more capacity and throughput.

=item * Event handlers (in serial).

Handle server-level events with a simple plugin.  Events like server startup and
shutdown, the start or end of a transmission, etc.

More details to follow.

=back 

=head1 AUTHOR

John Drago <jdrago_999@yahoo.com>
 
=head1 COPYRIGHT AND LICENSE

Copyright (C) 2008 by John Drago

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.0 or,
at your option, any later version of Perl 5 you may have available.

=cut
