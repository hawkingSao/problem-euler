require 'prime'

def d(number)
  raise '引数が整数ではない' unless number.is_a?(Integer)

  if number != 1
    geometric_progression_of_divisor = Prime.prime_division(number).map do |n, i|
      (n**(i + 1) - 1) / (n - 1)
    end
    geometric_progression_of_divisor.inject(&:*) - number
  else
    1
  end
end

def amicable?(number, comparison)
  d(number) == comparison && d(comparison) == number && number != comparison
end

answer = 0
(1..10_000).each do |i|
  answer += i if amicable?(i, d(i))
end

puts answer
