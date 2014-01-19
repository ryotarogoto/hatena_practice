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
    my @obj_log;
    open my $fh, '<', $self->{filename} or die $!;
    my @lines = <$fh>;
    for my $line (@lines) {
        push @out, $self->parse_line( $line );
    }
    $fh->close;
    for my $line (@out) {
        push @obj_log, %{ $line };
    }

    return @obj_log;
}

sub parse_line {
    my ($self, $line) = @_;
    my %kv;
    chomp $line;
    for (map { [ split /:/, $_, 2 ] } split /\s{2,}/, $line) {
        $kv{$_->[0]} = $_->[1];
    }

    return \%kv
}

1;
