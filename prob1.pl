#!/usr/bin/perl 
use strict;
use warnings;
use List::Util qw( sum );

$\ = "\n";
print sum grep { $_ % 3 == 0 || $_ % 5 == 0 } 1..999;
