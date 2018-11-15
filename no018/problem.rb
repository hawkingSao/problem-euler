def path_array
  File.open('number.txt') do |numbers|
    numbers.each_line.map { |line| line.split.map(&:to_i) }.reverse
  end
end

total = path_array
bottom = total.shift

until total.empty?
  new_bottom = []
  total.first.each_with_index do |number, i|
    bigger = bottom[i] > bottom[i + 1] ? bottom[i] : bottom[i + 1]
    new_bottom << number + bigger
  end
  bottom = new_bottom
  total.shift
end

puts bottom.max
