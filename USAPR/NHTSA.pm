package USAPR::NHTSA;

use strict;
use parent 'USAPR';

use Data::Dumper;

# TODO: Add make, model, year, and code fields.
sub new {
    my $class = shift;
    my $self = shift;
    return $class->SUPER::new($self);
};



sub organization {
    return "NHTSA";
};

1;

