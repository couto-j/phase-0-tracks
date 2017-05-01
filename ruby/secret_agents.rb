def encrypt(word)
  counter = 0
  code = []
  while counter < word.length
    if word[counter] == "z"
      code[counter] = "a"
    elsif word[counter].ord == 32
      code[counter] = word[counter]
    else
      code[counter] = word[counter].next
    end
    counter += 1
  end
  code.join
end

def decrypt(word)
  counter = 0
  code = []
  while counter < word.length
    if word[counter] == "a"
      code[counter] = "z"
    elsif word[counter].ord == 32
      code[counter] = word[counter]
    else
      code[counter] = (word[counter].ord - 1).chr
    end
    counter += 1
  end
  code.join
end
#Code below is decrypt method calling the encrypt method.  This
#will result in an output that matches the input
#puts decrypt(encrypt("swordfish"))

#set up loop to ensure correct answer
correct_answer = true
while correct_answer
#ask user they type of service they want to perform
  puts "Would you like to encrypt or decrypt a password? Enter 1
  for encrypt and 2 for decrypt."
  answer = gets.chomp.to_i
#encrypt and print the user's password
  if answer == 1
    puts "What is the password?"
    password = gets.chomp
    puts "The encrypted version is #{encrypt(password)}."
    correct_answer = false
#decrypt the user's password
  elsif answer == 2
    puts "What is the password?"
    password = gets.chomp
    puts "The decrypted version is #{decrypt(password)}."
    correct_answer = false
#prompt for correct input
  else
    puts "Please enter again"
  end
end