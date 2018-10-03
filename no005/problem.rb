=begin
問題文

2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
=end

require 'prime'
prime_factors_array = Prime.each(20).to_a

prime_factors_index_array = prime_factors_array.map do |n|
  index = 0
  loop do
    index += 1
    break if 20 < n ** (index + 1)
  end
  n ** index
end

puts prime_factors_index_array.inject(:*)
