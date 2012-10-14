package USAPR::CDC;

use strict;
use parent 'USAPR';

use Data::Dumper;


sub new {
   my $class = shift;
   return $class->SUPER::new(@_);

};



sub organization {
   return "CDC";
};

1;

