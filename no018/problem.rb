def path_array
  File.open('number.txt') do |numbers|
    numbers.each_line.map { |line| line.split.map(&:to_i) }.reverse
  end
end
