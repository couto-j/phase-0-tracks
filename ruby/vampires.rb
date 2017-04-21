# Four introductory questions.

puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year where you born?"
birth_year = gets.chomp.to_i

# Checking for age versus birth year

this_year = Time.new.year
	if (this_year - birth_year) == age
		age_check = true
	else
		age_check = false
	end

puts "Should we order some garlic bread for you?"
bread = gets.chomp.downcase
	if bread == "yes"
		order_bread = true
	else 
		order_bread = false
	end 

puts "Would you like to enroll in the company's health insurance?"
insurance = gets.chomp.downcase
	if insurance == "yes"
		buy_insurance = true
	else
		buy_insurance = false
	end

#Conditonals to check for vampires.

result = String.new
	if age_check && (order_bread || buy_insurance)
		result = "Probably not a vampire."
	elsif age_check == false && (order_bread == false && buy_insurance == false)
		result = "Probably a vampire."
	end
	if age_check == false && order_bead == false && buy_insurance == false
		result = "Almost certainly a vampire."
	end
	if name == "Drake Cula" or name == "Tu Fang"
		result = "Definitely a vampire."
	end
	if result == ""
		result = "Results inconclusive."
	end


