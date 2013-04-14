package USAPR::CDC;

use strict;
use parent 'USAPR';

use Data::Dumper;

#TODO: Support food_type field currently 2 values can be set ( drug, food)
sub new {
    my $class = shift;
    return $class->SUPER::new(@_);

};



sub organization {
    return "CDC";
};

1;

