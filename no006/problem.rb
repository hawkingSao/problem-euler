range = [*1..100]
sum_of_squares = range.inject { |result, n| result + n**2 }
square_of_sum = range.inject(:+)**2

puts square_of_sum - sum_of_squares
