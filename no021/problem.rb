require 'prime'

def d(number)
  raise '引数が整数ではない' unless number.is_a?(Integer)
  geometric_progression_of_divisor = Prime.prime_division(number).map do |n, i|
    (n**(i + 1) - 1) / (n - 1)
  end
  geometric_progression_of_divisor.inject(&:*) - number
end
