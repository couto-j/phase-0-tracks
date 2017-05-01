# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

puts #1. Iterate through the zombie_apocalypse_supplies 
#array printing each item in the array separated by an asterisk'

puts "Array Drill 1: Seperate each item with an asterisk"

zombie_apocalypse_supplies.each { |items| print items, " * " }

puts "\n\n" #Seperate answers out

#2. In order to keep yourself organized, sort your zombie_apocalypse_supplies 
#in alphabetical order. Do not use any special built-in methods.'

puts "Array Drill 2: Sort the array"
def zombie_sort(zombie_apocalypse_supplies)
	zombie_length = zombie_apocalypse_supplies.length
	loop do
		zombie_swap = false

		(zombie_length - 1).times do |num|
			if zombie_apocalypse_supplies[num] > zombie_apocalypse_supplies[num + 1]
				zombie_apocalypse_supplies[num], zombie_apocalypse_supplies[num + 1] = zombie_apocalypse_supplies[num + 1], zombie_apocalypse_supplies[num]
				zombie_swap = true
			end
		end
		
		break if zombie_swap == false

	end

	return zombie_apocalypse_supplies
end

puts zombie_sort(zombie_apocalypse_supplies)
puts "\n\n" #Seperate answers out

#3. Create a method to see if a particular item (string) is in the 
#zombie_apocalypse_supplies. Do not use any special built-in methods.'
# For instance: are boots in your list of supplies?

puts "Array Drill 3: Check for items in your bag"

puts "Check for an item"
answer = gets.chomp.downcase
zombie_test = false

zombie_apocalypse_supplies.each do |items|
	if items == answer
		zombie_test = true
	end
end

if zombie_test == true 
	print "You have this item already"
elsif print "Time to stock up"
		
end
puts "\n\n" #Seperate answers out		

#4. You can't carry too many things, you've only got room in your 
#pack for 5 Remove items leaving only 5."

puts "Array Drill 4: Remove all items but 5"

new_bag = []
trash = []

zombie_apocalypse_supplies.each do |items|
	if items.length >= 9
		trash << items
	elsif items.length < 9 
	 	new_bag << items
	end
end

print new_bag

puts "\n\n" #Seperate answers out


# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.

puts "Array Drill 5: Combine and remove duplicates of two survivor packs"

other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]

print zombie_apocalypse_supplies | other_survivor_supplies

puts "\n\n" #Seperate answers out

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}


# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.

puts "Hash Drill 1: Seperate each key with a dash and group with an asterisk"
extinct_animals.each {|key, value| puts "#{key} - #{value} *"} 

puts "\n\n" #Seperate answers out

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.

puts "Hash Drill 2: Keep animals if they were extinct before 2000"

old_animals = []
new_animals = []
extinct_animals.each do |key, value|
	if (value - 2000) < 0
		old_animals << [key, value]
	elsif (value - 2000) >= 0
		new_animals << [key, value]
	end
end

print old_animals

puts "\n\n" #Seperate answers out

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.

puts "Hash Drill 3: Reduce years extinct by 3"

extinct_animals.each {|key, value| extinct_animals[key] = value - 3}
p extinct_animals

puts "\n\n" #Seperate answers out

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.

puts "Hash Drill 4: Check for extinct animals"

check_extinct_animals = ["Andean Cat", "Dodo", "Saiga Antelope"]
animals_test = false

extinct_animals.each do |key1, value1|
	check_extinct_animals.each do |key2, value2|
		if key1 ==  key2
			animals_test = true
		elsif key1 != key2
			animals_test = false
		end
		if animals_test == true
			puts "The #{key2} is extinct"
		end
	end
end


puts "\n\n" #Seperate answers out	

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.

puts "Hash Drill 5: Return Passenger Pigeon"
pigeon_not_extinct = []
extinct_animals.each do |animals|
	pigeon_not_extinct << animals
	pigeon_not_extinct.delete_if {|key, value| key !="Passenger Pigeon"}
end
p pigeon_not_extinct.flatten
p extinct_animals