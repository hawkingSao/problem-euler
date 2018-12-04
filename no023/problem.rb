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
