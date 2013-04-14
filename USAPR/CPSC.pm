package USAPR::CPSC;

use strict;
use parent 'USAPR';

use Data::Dumper;

#TODO: Support UPC code
sub new {
   my $class = shift;
   return $class->SUPER::new(@_);

};



sub organization {
   return "CPSC";
};

1;

