=begin
問題文

A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
Find the largest palindrome made from the product of two 3-digit numbers.
=end

def palindrome?(result)
  result.to_s.reverse == result.to_s
end

palindromic_number_array = []
(100..999).each do |n|
  (100..999).each do |i|
    result = n * i

    if palindrome?(result)
      palindromic_number_array << result
    end
  end
end
puts palindromic_number_array.max
