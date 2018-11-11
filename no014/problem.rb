def collatz_sequence(number:, count:)
  if number == 1
    count += 1
  elsif number.even?
    collatz_sequence(number: number / 2, count: count += 1)
  else
    collatz_sequence(number: 3 * number + 1, count: count += 1)
  end
end

result_hash = { longest_chain_count: 0, answer: 0 }
(1..1000000).each do |number|
  calculation = collatz_sequence(number: number, count: 0)
  if result_hash[:longest_chain_count] < calculation
    result_hash[:longest_chain_count] = calculation
    result_hash[:answer] = number
  end
end

puts result_hash
