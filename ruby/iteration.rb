#Method that takes a block.

def items
	item1 = "yarn"
	item2 = "knitting needles"
	yield(item1, item2)
end

puts "Here's what you have:"
items { |item1, item2| puts "You have some #{item1} and #{item2} in your knitting bag."}


#Release 1: Using .each, .map, and .map!

inventory = ["skein of yarn", "pair of knitting needles", "pattern", "row counter"]

puts "After .each on array:"
inventory.each do |item|
	puts "You have a #{item} in your knitting bag."
end

modfied_inventory = inventory.map do |item|
  item.upcase
end

puts "After .map call:"
p inventory
p modfied_inventory

inventory.map! do |item|
  "nothing to see here!"
end

puts "After .map! call:"
p inventory

inventory_count = { "skeins of yarn" => 6, "knitting needles" => 3, "patterns" => 2, "stitch markers" => 3}

puts "After .each on hash:"

inventory_count.each do |item, number|
  puts "You have #{number} #{item} in your knitting bag."
end

puts "after .map on hash:"
updated_inventory = inventory_count.map do |item, number|
  number = number+1
  item = item.upcase
  puts "You now have #{number+1} #{item} in your knitting bag."
end

puts inventory_count
p updated_inventory



