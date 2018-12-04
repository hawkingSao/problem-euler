# frozen_string_literal: true

def factorial_digit_sum(number)
  factorial_number = number.downto(1).inject(&:*)
  factorial_number.to_s.chars.map(&:to_i).inject(:+)
end

puts factorial_digit_sum(100)
