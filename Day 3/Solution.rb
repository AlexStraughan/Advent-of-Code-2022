# file_path = File.expand_path("../numbers.txt", "__FILE__")
# input = File.read(file_path)

def find_errors(filename)
  # Read the contents of the file into a string

  contents = File.read(filename)

  # Split the string into individual rucksacks
  rucksacks = contents.split("\n")

  # Initialize a sum to keep track of the total priority
  sum = 0

  rucksacks.each do |rucksack|
    # Split the rucksack into the two compartments
    comp1, comp2 = rucksack.split('').each_slice((rucksack.length / 2.0).round).to_a

    # Find the item type that appears in both compartments by intersecting the sets
    common_item = (comp1 & comp2).first

    # Calculate the priority of the common item and add it to the sum
    sum += (common_item.ord - 96) if common_item =~ /[a-z]/
    sum += (common_item.ord - 38) if common_item =~ /[A-Z]/
  end

  sum
end

# Test the function
puts find_errors("rucksacks.txt")
