require 'prime'

def triangle_number(number)
  number * (number + 1) / 2
end

def divisor_count(number)
  Prime.prime_division(number).map(&:last).map { |i| i + 1 }.inject(:*)
end

n = 2
loop do
  result = triangle_number(n)
  break if divisor_count(result) > 500

  n += 1
end

puts triangle_number(n)
