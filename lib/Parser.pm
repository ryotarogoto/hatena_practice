package Parser;

use strict;
use warnings;

sub new {
    my ($class, %args) = @_;
    my $self = {%args};
    bless $self, $class;
}

sub parse {
    open my $fh, '<', $self->{filename} or die $!;
    my @lines = <$fh>;
