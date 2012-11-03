#!/usr/bin/python

import sys
from prime_factors import prime_factors

factor_count_answer = {}
answer = 1
to = int(sys.argv[1])

def prime_factor_count(given):
    count = {}
    factors = prime_factors(given)
    for f in factors:
        if f in count:
            count[f] += 1
        else:
            count[f] = 1
    return count

for i in range(1, to):
    factor_count_i = prime_factor_count(i)
    for f in factor_count_i.keys():
        if not (f in factor_count_answer) or factor_count_answer[f] < factor_count_i[f]:
            factor_count_answer[f] = factor_count_i[f]

for (f, c) in factor_count_answer.items():
    answer *= int(f)**c
print answer

