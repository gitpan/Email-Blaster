#!/usr/bin/perl -w

use strict;
use warnings 'all';
use forks;
use Email::Blaster;
use Email::Blaster::Transmission;
use My::TransmissionInitHandler;


my $blaster = Email::Blaster->new( );

$blaster->handle_event( type => 'server_startup' );

my $main = threads->create(sub {
  local $SIG{INT} = $SIG{TERM} = sub {
    # Quitting:
    warn "Bulk Server shutting down...\n";
    $blaster->handle_event( type => 'server_shutdown' );
    exit;
  };
  
  $blaster->run( );
});

$main->join();




