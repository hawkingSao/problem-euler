# frozen_string_literal: true

fibonacci_sequence = [1, 2]

loop do
  n = fibonacci_sequence[-2, 2].inject(:+)
  break if n > 4_000_000

  fibonacci_sequence << n
end

puts fibonacci_sequence.select(&:even?).inject(:+)
