=begin
問題文

A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a2 + b2 = c2
For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
=end

def pythagorean_triplet?(a, b, c)
  a ** 2 + b ** 2 == c ** 2
end

def calculation
  1.upto(998) do |a|
    (a + 1).upto(1000 - a) do |b|
      if a + b < 1000
        c = 1000 - (a + b)
        if c < a + b
          if pythagorean_triplet?(a, b, c)
            return a * b * c
          end
        end
      end
    end
  end
end

puts calculation
#=> 31875000
