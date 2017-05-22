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
  puts "You now have #{number} #{item} in your knitting bag."
end

puts inventory_count
puts updated_inventory

# Release 2 - using documentation to satisfy array conditions

numbers = [0,1,2,3,4,5]
numbers.delete_if {|number| number<2} 
numbers = [0,1,2,3,4,5]
numbers.keep_if {|number| number>3}
numbers = [0,1,2,3,4,5]
numbers.select {|number| number>2}
numbers = [0,1,2,3,4,5]
numbers2 = numbers.take_while {|number| number<3}

#Release 2 - using documentation to satisfy hash conditions

num_letters = {1 => "one", 2 => "two",3 =>"three", 4 => "four", 5 => "five"}
num_letters.delete_if {|num, letter| num >2 }
num_letters = {1 => "one", 2 => "two",3 =>"three", 4 => "four", 5 => "five"}
num_letters.select! {|num,letter| letter.length > 3}
num_letters = {1 => "one", 2 => "two",3 =>"three", 4 => "four", 5 => "five"}
num_letters.keep_if {|num, letter| letter.length <= 4}
num_letters = {1 => "one", 2 => "two",3 =>"three", 4 => "four", 5 => "five"}
num_letters.reject! {|num,letter| num < 3}

 

