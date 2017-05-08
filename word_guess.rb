class Game

  def initialize(word)
    @word = word
    @user_correct = []
    @guesses = @word.length
    @game_over = false
  end

  def current_status
    print "Word: "
    @word.each_char do |letter|
      if @user_correct.include?(letter)
        print letter
      else
        print "_"
      end
    end
    puts "\n#{@guesses} guesses remaining."
    take_a_guess
  end

  def take_a_guess
    puts "Guess a single letter (a-z) or the entire word:"
    user_input = gets.chomp
    if good_guess?(user_input)
      limited_guess(user_input) if user_input.size == 1
      secret_word(user_input) if user_input.size > 1
    else
      puts "Invalid character(s) detected. Choose a single letter (a-z) or the entire word:"
      take_a_guess
      
    end
  end

  def limited_guess(guess)
  
     if @word.include?(guess) == true 
       @user_correct << guess
      puts "Found #{@word.count(guess)} occurrence(s) of the character #{guess}."
     else
       @word.include?(guess) == false
        puts "Sorry no #{guess}'s found."
        @guesses -= 1
     end
  
  end

  def secret_word(guess)
    if guess == @word
    puts "Congratulations, you've guessed the word!" 
    return true
    end 
    return true if @game_over == true 
    if @guesses == 0 
      puts "You have run out of guesses. GAME OVER LOSER."
      return true
    end
  
  end

  def good_guess?(guess)
    return false if guess =~ /[0-9]|\W/
    true
  end

end
