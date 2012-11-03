#!/usr/bin/ruby -w

digits = []
the_five = []
largest = 0
file = File.new('prob8.in', 'r')


while (line = file.gets)
    digits += line.split(/\s*/).collect{|x| Integer(x)}
end

for i in (0..995)
    sub = digits[i, 5]
    product = sub.inject{|prod, x| prod * x}
    if (product > largest)
        largest = product
        the_five = sub
    end
end

puts largest
puts the_five
