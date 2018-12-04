# frozen_string_literal: true

def diagonally_right_down_array(table:, row:, column:)
  Array.new(4) { |i| table[row + i][column + i] }
end

def diagonally_right_up_array(table:, row:, column:)
  Array.new(4) { |i| table[row - i][column + i] }
end

table = []
File.open('number.txt') do |numbers|
  numbers.each_line do |line|
    table << line.chomp.split.map(&:to_i)
  end
end

tables = [table, table.transpose]
results_array = []

# right, left, up, down
tables.each do |each_table|
  each_table.each do |row|
    row.each_cons(4) do |adjacent_array|
      results_array << adjacent_array.inject(:*)
    end
  end
end

# diagonally
table.each.with_index(0) do |row, i|
  row.each.with_index(0) do |_number, j|
    if i <= 16 && j <= 16
      results_array <<
        diagonally_right_down_array(table: table, row: i, column: j).inject(:*)
    end

    if i >= 3 && j <= 16
      results_array <<
        diagonally_right_up_array(table: table, row: i, column: j).inject(:*)
    end
  end
end

puts results_array.max
