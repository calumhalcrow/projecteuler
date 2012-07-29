#!/usr/bin/ruby -w

class Pairs
    def initialize
        @seed = 999
        @level = @seed * 2
    end

    def pairs(level)
        first = [@seed, level-1].min
        second = level - first
        pairs = [[first, second]]

        while first - second > 1
            first -= 1
            second += 1
            pairs << [first, second]
        end

        return pairs
    end

    def find
        for level in (1..@level)
            level = @level - (level - 1)  # hack

            pairs = self.pairs(level)

            for pair in pairs
                candidate = (pair[0] * pair[1]).to_s
                backwards = candidate.to_s.reverse

                if candidate == backwards
                    return pair
                end
            end
        end
    end

end

array = Pairs.new.find
puts array[0] * array[1]
puts array
