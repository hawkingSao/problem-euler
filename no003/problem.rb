=begin
問題文

The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143 ?
=end

require 'prime'
puts Prime.prime_division(600851475143).map(&:first).last


