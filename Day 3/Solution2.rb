def find_badges(filename)
  # Read the contents of the file into a string
  contents = File.read(filename)

  # Split the string into individual rucksacks
  rucksacks = contents.split("\n")

  # Initialize a sum to keep track of the total priority
  sum = 0

  # Iterate over the rucksacks in groups of three
  rucksacks.each_slice(3) do |group|
    # Convert the rucksacks into sets
    sets = group.map { |r| r.split('').to_set }

    # Find the item type that appears in all three rucksacks by intersecting the sets
    badge = sets[0] & sets[1] & sets[2]

    # Extract the common item from the set
    common_item = badge.to_a.first

    # Calculate the priority of the common item and add it to the sum
    sum += (common_item.ord - 96) if common_item =~ /[a-z]/
    sum += (common_item.ord - 38) if common_item =~ /[A-Z]/
  end

  sum
end

# Test the function
puts find_badges("rucksacks.txt")
