package Parser;

use strict;
use warnings;
use Log;
use DDP;

sub new {
    my ($class, %args) = @_;
    my $self = {%args};
    return bless $self, $class;
}

sub parse {
    my $self = shift;
    my @out;
    my @splitted_line;
    open my $fh, '<', $self->{filename} or die $!;
    my @lines = <$fh>;
    for my $line (@lines) {
        chomp $line;
        @splitted_line = split /\s{2,}/, $line;
        for my $tmp (@splitted_line) {
            push @out, split /:/, $tmp, 2;
        }
    }
    $fh->close;
    my $num_rows = @splitted_line;
    my %out = { @out };

    return %out;
}

1;
