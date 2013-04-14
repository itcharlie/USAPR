package USAPR::NHTSA;

use strict;
use parent 'USAPR';

use Data::Dumper;


sub new {
    my $class = shift;
    my $self = shift;
    return $class->SUPER::new($self);
};



sub organization {
    return "NHTSA";
};

1;

