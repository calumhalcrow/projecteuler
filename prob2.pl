#!/usr/bin/perl 
use strict;
use warnings;


sub fib
{
    my $term = shift;
    $term < 3 ? $term : fib($term - 1) + fib($term - 2);
}

my $term = 0;
my ($sum, $i);

while ( $term < 4000000 )
{
    $sum += $term if ($term % 2 == 0);
    $term = fib(++$i);
}

print $sum;
