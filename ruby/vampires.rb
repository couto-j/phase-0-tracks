#asking some questions
puts "What's your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i 

puts "What year were you born?"
dob = gets.chomp.to_i

#checking age versus birth year

current_year = Date.today.year

if (current_year - birth_year) == age
	age_check = true
else
	age_check = false
end

puts "Our company cafeteria serves garlic bread, but you need to pre-order. Should we order some for you?"
bread = gets.chomp.downcase

#conditoinal for ordering garlic bread

if bread == "yes"
	order_bread = "true"
else
	order_bread = "false"
end

puts "Would you like to enroll in the company's health insurance?"
insurance = gets.chomp.downcase

#conditoinal for waiving health insurance

if insurance == "yes"
	waive_insurance = "false"
else
	waive_insurance = "true"
end










 







