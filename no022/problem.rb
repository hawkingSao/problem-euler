def names
  File.open('names.txt').read.scan(/\w+/).sort
end

def score_of_name(name, index)
  worth = name.chars.map { |alphabet| alphabet.ord - 64 }.inject(:+)
  worth * index
end

