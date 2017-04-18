puts "What is your hamster's name?"

hamster_name = gets
hamster_name = hamster_name.chomp

puts "Your hamster's name is #{hamster_name}. Great name!"

puts "What is #{hamster_name}'s volume level on a scale of 1 to 10?"

hamster_volume = gets
hamster_volume = hamster_volume.chomp.to_i

puts "#{hamster_name}'s volume level is noted as #{hamster_volume} on a scale of 1 to 10."


puts "What is #{hamster_name}'s fur color?"

fur_color = gets
fur_color = fur_color.chomp

puts "#{hamster_name}'s fur color is #{fur_color}. Beautiful!"

puts "In your professional opinion, is #{hamster_name} a good candidate for adoption?"

adoption = gets
adoption = adoption.chomp

puts "Your opinion on #{hamster_name}'s adoption status has been noted."

puts "What is #{hamster_name}'s estimated age (in years)?"

age = gets
age = age.chomp.to_i

if age == 0
	puts "#{hamster_name}'s age is undetermined."
else age != 0
	puts "#{hamster_name}'s age is #{age}. Wonderful."
end

puts "All data on #{hamster_name} has been stored successfully. Thank you."

puts "Here's a summary of the data we have on #{hamster_name}:"

if age == 0

	puts "#{hamster_name} is a #{fur_color} hamster of an indeterminate age. #{hamster_name}'s volume level is #{hamster_volume} on a scale of 1 to 10. Is #{hamster_name} appropriate for adoption? In your opinion, #{adoption}."

else age != 0

	puts "#{hamster_name} is a #{fur_color} hamster that's about #{age} years old. #{hamster_name}'s volume level is #{hamster_volume} on a scale of 1 to 10. Is #{hamster_name} appropriate for adoption? In your opinion, #{adoption}."
end