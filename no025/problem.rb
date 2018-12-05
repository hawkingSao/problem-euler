# frozen_string_literal: true

def nth_digit_fibonacci_number(nth_digit)
  fibonacci_sequence = [1, 1]

  loop do
    n = fibonacci_sequence[-2, 2].inject(:+)
    break if n.to_s.length == nth_digit

    fibonacci_sequence << n
  end

  fibonacci_sequence.size + 1
end

puts nth_digit_fibonacci_number(1_000)
