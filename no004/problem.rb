# frozen_string_literal: true

def palindrome?(result)
  result.to_s.reverse == result.to_s
end

answer = { palindromic_number: 0, n: 100, i: 100 }
999.downto(100) do |n|
  999.downto(n) do |i|
    result = n * i
    next unless palindrome?(result) && answer[:palindromic_number] < result

    answer[:palindromic_number] = result
    answer[:n] = n
    answer[:i] = i
  end
end
puts answer
