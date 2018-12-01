def names
  File.open('names.txt').read.scan(/\w+/).sort
end
