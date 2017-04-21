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



