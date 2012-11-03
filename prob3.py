#!/usr/bin/python

import sys

def prime_factors(of):
    upto = int(of**0.5)
    factors = []

    for i in range(2, upto, 1):
        if (not is_prime(i)):
            continue

        # i is prime

        if (of % i == 0):
            factors.append(str(i))
            subFactors = prime_factors(of / i)
            if (subFactors):
                factors.extend(subFactors)
            else:
                factors.append(str(of / i))
            break

    return factors

def is_prime(i):
    if (i > 2):
        for j in range(2, i-1, 1):
            if (i % j == 0):
                return False
    return True

primeFactors = prime_factors(int(sys.argv[1]))
primeFactors.sort(key=int)
print ', '.join(primeFactors)
