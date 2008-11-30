
package Email::Blaster::ConfigNode::Throttled;

use strict;
use warnings 'all';
use base 'Email::Blaster::ConfigNode';


#==============================================================================
sub new
{
  my ($class, $ref) = @_;
  
  my $s = $class->SUPER::new( $ref );
  
  $s->{throttle} ||= [ ];
  foreach( @{[ $s->{throttle} ]} )
  {
    map { $class->SUPER::new( $_ ) } @$_;
  }# end foreach()
  
  return $s;
}# end new()

1;# return true:

