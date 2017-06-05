class Puppy
  
  def initialize
    puts "Intializing new puppy instance ..."
  end
  
  def fetch(toy)
    puts "I brought back the #{toy}."
    toy
  end
  
  def speak(number)
    number.times do |number|
      puts "Woof!"
    end
  end
  
  def roll_over
    puts "*rolls over*"
  end
  
  def dog_years(x)
    x * 7
  end
  
  def sit 
    puts "I'm sitting down!"
  end
end


emily = Puppy.new 
emily.fetch("ball")
emily.speak(5)
emily.roll_over
emily.dog_years(2)
emily.sit

class Dancer
  
  def initialize(name)
    @name = name
    puts "A new dancer is on deck! Cheer for #{@name}!"
  end
  
  def twirl(number)
      puts "#{@name} is twirling #{number} times!"
  end
  
  def jump
    puts "It's time to jump! JUMP JUMP!"
  end
end


names = ['Terrence', 'Nolan', 'Shirely', 'Agueda', 'Tatyana', 'Keshia', 'Georgene', 'Marcia', 'Brigitte', 'Ma', 'Carl', 'Stormy', 'Tayna', 'Trinh', 'Kali', 'Andre', 'Florinda', 'Guy', 'Dayna', 'Otis', 'Jimmie', 'Estrella', 'Willodean', 'Jeanett', 'Ha', 'Opal', 'Ilana', 'Brock', 'Venice', 'Jessi', 'Dorla', 'Ginny', 'Astrid', 'Clay', 'Karey', 'Criselda', 'Emely', 'Aileen', 'Isaac', 'Amber', 'Blanch', 'Jammie', 'Trang', 'Florine', 'Fannie', 'Avril', 'Latina', 'Iris', 'Lanora', 'Reba' ]

dancers = []

for x in (0..49)
  dancers[x] = Dancer.new(names[x])
end

dancers.each do |index|
  index.twirl(5)
  index.jump 
end
