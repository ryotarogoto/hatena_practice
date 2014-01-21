package LogCounter;

use strict;
use warnings;

sub new {
    my ($class, %args) = @_;
    my $self = {%args};
    return bless $self, $class;
}

sub count_error {
    my $self = shift;
    return "hello";
}

sub group_by_user {
    my $self = shift;
    return "good";
}

