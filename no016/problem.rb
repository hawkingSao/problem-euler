# frozen_string_literal: true

def power_digit_sum(number:, index:)
  (number**index).to_s.chars.map(&:to_i).inject(:+)
end

puts power_digit_sum(number: 2, index: 1000)
