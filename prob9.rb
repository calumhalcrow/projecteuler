#!/usr/bin/ruby -w


for a in (1..998)
    for b in (1..998)
        c = 1000 - a - b
        if (a**2 + b**2 == c**2)
            puts a*b*c
            puts "#{a} #{b} #{c}";
            exit
        end
    end
end
