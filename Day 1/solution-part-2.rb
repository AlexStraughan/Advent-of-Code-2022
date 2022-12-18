file_path = File.expand_path("../numbers.txt", "__FILE__")
input = File.read(file_path)

# remove line, then use .map to return each element
# in the array as an integer

# same as last one

puts input.split("\n\n")
  .map{
    |calories|
    calories.split.map(&:to_i).sum}

  .sort
  .last(3)
  .sum
