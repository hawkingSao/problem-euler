=begin
問題文

A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
Find the largest palindrome made from the product of two 3-digit numbers.
=end

def palindrome?(result)
  result.to_s.reverse == result.to_s
end

answer = {palindromic_number: 0, n: 100, i: 100}
999.downto(100) do |n|
  999.downto(n) do |i|
    result = n * i
    if palindrome?(result) && answer[:palindromic_number] < result
      answer[:palindromic_number], answer[:n], answer[:i] = result, n, i
    end
  end
end
puts answer
