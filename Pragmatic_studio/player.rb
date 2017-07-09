class Player
  attr_reader :health
  attr_accessor :name
  def initialize(name,health=100)
    @name = name.capitalize
    @health = health
  end

  def score
    @health + @name.length
  end

  def to_s
   "I'm #{@name} with a health of #{@health} and a score of #{score}"
  end

  def blam
    @health -= 10
    puts "#{@name} got blammed!"
  end

  def w00t
    @health += 15
    puts "#{@name} got w00ted!"
  end

  def strong?
    @health >= 100 ? "strong":"weak"
  end

end

if __FILE__ == $0
  player = Player.new("moe")
  puts player.name
  puts player.health
  player.w00t
  puts player.health
  player.blam
  puts player.health
end


# The if expression there does something special: it only runs the enclosing code
# if the name of the current source file (__FILE__) is the same as the name of the
# Ruby program file being run ($0 or $PROGRAM_NAME). In other words, the example code
# will be executed if we run the player.rb file. However, the example code won't be executed
# if we run the game.rb program file, even though it loads player.rb.
