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


