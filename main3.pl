#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;

my $parser = Parser->new( filename => 'log.ltsv' );
my $counter = LogCounter->new($parser->parse);
print 'total error size: ' . $counter->count_error . "\n";
print Dumper $counter->group_by_user;
