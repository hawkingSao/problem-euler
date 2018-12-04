# frozen_string_literal: true

def pythagorean_triplet?(smallest, middle, largest)
  smallest**2 + middle**2 == largest**2
end

def calculation
  1.upto(998) do |a|
    (a + 1).upto(1000 - a) do |b|
      next unless a + b < 1000

      c = 1000 - (a + b)
      if c < a + b
        return a * b * c if pythagorean_triplet?(a, b, c)
      end
    end
  end
end

puts calculation
#=> 31875000
