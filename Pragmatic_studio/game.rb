require_relative 'player'
require_relative 'die'
class Game
  attr_reader :title

  def initialize(title)
    @title = title
    @players = []
  end

  def add_player(a_player)
    @players.push(a_player)
  end

  def play
    puts "There are #{@players.size} players in the game"
    @players.each do |player|
      puts player
    end
    @players.each do|player|
      die = Die.new
      number_rolled = die.roll
      case
      when number_rolled < 3
        player.blam
      when number_rolled < 5 && number_rolled > 2
        puts "#{player.name} is skipped"
      else player.w00t
      end
        puts player
    end
  end
end

# case <= WHY DOES ONLY EMPTY CASE WORK AND NOT OTHERS???!! IS IT OKAY TO USE EMPTY CASE???
# when number_rolled < 3
#   player.blam
# when number_rolled < 5 && number_rolled > 2
#   puts "#{player.name} is skipped"
# else player.w00t
# end
