#Client hash keys.
client = {
  name: "",
  age: 0,
  street_address: "",
  city: "",
  state: "",
  email: "",
  phone: "",
  favorite_colors: "",
  colors_to_avoid: "",
  married: false,
  children: 0,
  ombre: false
}

#Prompting designer for info.
puts "What is the client's name?"
client[:name] = gets.chomp.to_s
puts "How old is the client?"
client[:age] = gets.chomp.to_i
puts "What is the client's street address?"
client[:street_address] = gets.chomp.to_s
puts "In what city is the client's home located?"
client[:city] = gets.chomp.to_s
puts "In what state does the client live?"
client[:state] = gets.chomp.to_s
puts "What is the client's email address?"
client [:email] = gets.chomp.to_s
puts "What is the clients phone number?"
client[:phone] = gets.chomp.to_s
puts "What are the clients favorite colors?"
client[:favorite_colors] = gets.chomp.to_s
puts "What colors should we avoid in their design?"
client[:colors_to_avoid] = gets.chomp.to_s
puts "Is the client married? (yes or no)"
married = gets.chomp.to_s.downcase
  if married == "yes"
    client[:married] = true
  else
    client[:married] = false
  end
puts "How many children does the client have?"
client[:children] = gets.chomp.to_i
puts "Does the client like ombre designs? (yes or no)"
  ombre = gets.chomp.to_s.downcase
  if ombre == "yes"
    client[:ombre] = true 
  else
    client[:ombre] = false
  end
  
puts client

#Check to make sure client data is correct and change as needed.

puts "Does the above information look correct? (yes or no)"

error_check = gets.chomp.downcase
  if error_check == "yes"
    puts "Wonderful. Here is the client information for your review:"
  else error_check == "no"
    puts "Oh no, let's see if we can fix that. Which category should we fix?"
    category_fix = gets.chomp.downcase
    if category_fix == "name" || category_fix == "street_address" || category_fix == "city" || category_fix == "state" || category_fix == "email" || category_fix == "phone" || category_fix == "favorite_colors" || category_fix == "colors_to_avoid"
      puts "What is the correct information?"
      corrected = gets.chomp.to_s
      client[category_fix.to_sym] = corrected
      puts "Here is the corrected information:"
      puts client
    elsif category_fix == "age" || category_fix == "children"
      puts "What is the correct information?"
      corrected = gets.chomp.to_i
      client[category_fix.to_sym] = corrected
      puts "Here is the corrected information:"
      puts client
    elsif category_fix == "married"  
      if client[:married] == true
        client [:married] = false
      else client[:married] = true
      end
      puts "Here is the corrected information:"
      puts client
    elsif category_fix == "ombre"  
      if client[:ombre] == true
        client [:ombre] = false
      else client[:ombre] = true
      end
      puts "Here is the corrected information:"
      puts client
    else 
      puts "That is not any kind of information we're looking for. Here is the client's information summary:"
      puts client
    end
  end