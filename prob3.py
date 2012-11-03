#!/usr/bin/python

import sys
from prime_factors import prime_factors

primeFactors = prime_factors(int(sys.argv[1]))
primeFactors.sort(key=int)
print ', '.join(primeFactors)
