puts " First day of class".center(20).upcase

school = 
{
  first_floor: 
  {
  
  "room 101" => ["maria, nita, manny, bob"],
  "room 102" => ["james, emily, sophia, dexter"],
  "room 103" => [ "kia, chastity, tina, tom"],

  },
  
  second_floor: 
  {
  "room 201"=> [ "jenny, tanya, natasha, ashley"],
  "room 202"=> [ "joey, sue, lindsey, jim"]
  }
}


puts school [:first_floor]

puts school [:second_floor]

puts school [:first_floor]["room 101"] 

puts school [:second_floor]["room 202"]

puts school [:second_floor]

puts school [:first_floor]
puts school [:second_floor]