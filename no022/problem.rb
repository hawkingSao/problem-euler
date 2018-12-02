def names
  File.open('names.txt').read.scan(/\w+/).sort
end

def score_of_name(name, index)
  worth = name.chars.map { |alphabet| alphabet.ord - 64 }.inject(:+)
  worth * index
end

answer = 0
names.each.with_index(1) do |name, index|
  answer += score_of_name(name, index)
end
puts answer
