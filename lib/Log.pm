package Log;

use strict;
use warnings;
use utf8;
use Encode;
use DateTime;

use DDP;

sub new {
    my ($class, %args) = @_;
    my $self = {%args};
    bless $self, $class;
}

sub method {
    my $self = shift;
    my @req = split / /, $self->{req};
    return $req[0];
}

sub path {
    my $self = shift;
    my @req = split / /, $self->{req};
    return $req[1];
}

sub protocol {
    my $self = shift;
    my @req = split / /, $self->{req};
    return $req[2];
}

sub uri {
    my $self = shift;
    my @req = split / /, $self->{req};
    my $uri =  'http:' . $self->{host} . $req[1];
    return $uri;
}


#@return string YYYY-MM-DDThh:mm:ss
sub time {
    my $self = shift;
    my $epoch = $self->{epoch};
    my $dt = DateTime->from_epoch( epoch => $epoch );

    return $dt->strftime("%Y-%m-%dT%T");

}

1;
