package USAPR::NHTSA;

use strict;
use parent 'USAPR';

use Data::Dumper;


sub new {
   my $class = shift;
   return $class->SUPER::new(@_);

};



sub organization {
   return "NHTSA";
};

1;

