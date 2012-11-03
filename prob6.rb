#!/usr/bin/ruby -w

ans = 0
x = Integer(ARGV[0])

for n in (1..x)
    ans += n * ((x*(x+1))/2 - n)
end

puts ans
