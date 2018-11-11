=begin
問題文

Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.

=end

sum = 0
File.open('number.txt') do |numbers|
  numbers.each_line do |line|
    sum += line.to_i
  end
end

puts sum.to_s[0..9]
