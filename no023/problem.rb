require 'prime'

class Integer
  def sum_of_proper_divisors
    if self != 1
      sum_of_divisors = Prime.prime_division(self).map do |n, i|
        (n**(i + 1) - 1) / (n - 1)
      end
      sum_of_divisors.inject(:*) - self
    else
      1
    end
  end

  def abundant?
    sum_of_proper_divisors > self
  end
end

def answer(from, to)
  abundants = (from..to).select(&:abundant?)

  sum_of_two_abundants = []
  abundants.each_with_index do |n, i|
    abundants[i..abundants.length].each do |other|
      sum_of_two_abundants << n + other
    end
  end

  sum_of_two_abundants.uniq!

  (from..to).reject { |n| sum_of_two_abundants.include?(n) }.inject(:+)
end
puts answer(1, 28_123)
