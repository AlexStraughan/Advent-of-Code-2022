
# # steps: identify file
# map the input
# find the max group

# file_path = File.expand_path("../numbers.txt", "../solution-part-1.rb")
# input = File.read(file_path)

file_path = File.expand_path("../numbers.txt", "__FILE__")
input = File.read(file_path)

# remove line, then use .map to return each element
# in the array as an integer

puts input.split("\n\n")
  .map{
    |calories|
    calories.split.map(&:to_i).sum}
  .max
