use strict;
use warnings;

use Data::Dumper;

use lib::Parser;

my $parser = Parser->new( filename => 'log.ltsv' );
warn Dumper $parser->parse;
