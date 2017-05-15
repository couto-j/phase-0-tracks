# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Turn long string into array 
  # Iterate array into hash keys
  # set default quantity to 1
  # print the list to the console [can you use one of your other methods here?]
# output: Hash [what data type goes here, array or hash?]

#grocery_list = ("apples cereal carrots pizza")

#grocery_arr = []
#grocery_list.split(' ')
#p grocery_list 

def create_list(list)
	grocery_arr = []
	grocery_arr = list.split(' ')
	grocery_quant = {}
	grocery_arr.each do |types|
		grocery_quant[types] = 1
	end
	grocery_quant
end

p create_list("apples cereal carrots pizza")
grocery_quant = create_list("apples cereal carrots pizza")





# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: Accept new values and assign that to the hash.
# output: Print out current hash.

# Method to remove an item from the list
# input: List and item name that needs to be removed.
# steps: Use hash method deleteif to remove unwanted item. (Think about what happens if the item isn't in the list.)
# output: Print updated list without the removed item.

# Method to update the quantity of an item
# input: Item they want to update and new desired quantity.
# steps: Iterate hash to see if item exists and reassign value with replace.
# output: Print updated list with new quantities.

# Method to print a list and make it look pretty
# input: Existing grocery list hash.
# steps: Iterate hash to print out key and value pairs.
# output: String with the associated key and value pairs.