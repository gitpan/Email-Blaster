
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
  map { $_ = $class->SUPER::new( $_ ) } grep { ref($_) && ref($_) eq 'HASH' } @{[ $s->{throttle} ]};
  
  return $s;
}# end new()

1;# return true:

