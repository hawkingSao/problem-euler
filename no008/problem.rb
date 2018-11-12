File.open('number.txt') do |number|
  numbers_array = number.gets.chomp.chars.map(&:to_i)

  results_array = []
  numbers_array.each_cons(13) do |adjacent_array|
    result = adjacent_array.inject(:*)
    results_array << result
  end
  puts results_array.max
end
