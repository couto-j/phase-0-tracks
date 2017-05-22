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