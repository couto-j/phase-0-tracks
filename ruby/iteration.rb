#Method that takes a block.

def items
	item1 = "yarn"
	item2 = "knitting needles"
	yield(item1, item2)
end

items { |item1, item2| puts "It looks like you're carrying around #{item1} and #{item2}." }