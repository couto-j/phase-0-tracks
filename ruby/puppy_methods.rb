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

class Gymnast
  def initialize(name)
    @name = name
    puts "Initializing new gymnast #{@name}"
  end
  def jump(num)
    puts "jumps" * num
  end
  def flip
    puts "#{@name} is flipping through the air."
  end

end
names = ['gymnast1', 'gymnast2', 'gymnast3', 'gymnast4', 'gymnast5', 'gymnast6',
'gymnast7', 'gymnast8', 'gymnast9', 'gymnast10', 'gymnast11', 'gymnast12',
'gymnast13', 'gymnast14', 'gymnast15', 'gymnast16', 'gymnast17', 'gymnast18',
'gymnast19', 'gymnast20', 'gymnast21', 'gymnast22', 'gymnast23', 'gymnast24',
'gymnast25', 'gymnast26', 'gymnast27', 'gymnast28', 'gymnast29', 'gymnast30',
'gymnast31', 'gymnast32', 'gymnast33', 'gymnast34', 'gymnast35', 'gymnast36', 
'gymnast37', 'gymnast38', 'gymnast39', 'gymnast40', 'gymnast41', 'gymnast42', 
'gymnast43', 'gymnast44', 'gymnast45', 'gymnast46', 'gymnast47', 'gymnast48', 
'gymnast49', 'gymnast50' ]

gymnasts = []
for x in (0..49)
  gymnasst[x] = gymnast.new(names[x])
end
puts gymnasts

gymnasts.each do |index|
  index.jump(5)
  index.flip
end

