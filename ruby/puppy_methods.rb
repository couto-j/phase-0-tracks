class Puppy
  def initialize
    puts "Initializing new puppy instance..."
  end
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  def speak(time)
    time.times do |time|
      puts "Woof!"
    end 
  end
  def roll_over 
    puts "*rolls over*"
  end
  def sit
    puts "I am sitting down!"
  end

end


# emily = Puppy.new
# emily.fetch("ball")
# emily.speak(5)
# emily.roll_over
# emily.sit

