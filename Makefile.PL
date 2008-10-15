use 5.00800;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Email::Blaster',
    VERSION_FROM      => 'lib/Email/Blaster.pm', # finds $VERSION
    PREREQ_PM         => {
      forks => 0,
      Mail::Sendmail => 0,
    }, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/Email/Blaster.pm', # retrieve abstract from module
       AUTHOR         => 'john <john@hsd1.co.comcast.net.>') : ()),
);
