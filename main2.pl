use strict;
use warnings;

use Data::Dumper;

use lib::Parser;

my $parser = Parser->new( filename => 'ltsv.log' );
warn Dumper $parser->parse;
