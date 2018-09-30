=begin
問題文

Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
=end

fibonacci_sequence = [1, 2]

loop do
  n = fibonacci_sequence[-2, 2].inject(:+)
  break if n > 4000000
  fibonacci_sequence << n
end

puts fibonacci_sequence.select{ |n| n % 2 == 0 }.inject(:+)
