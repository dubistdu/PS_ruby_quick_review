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
      case number_rolled
      when 1..2
        player.blam
      when 3..4
        puts "#{player.name} is skipped"
      else player.w00t
      end
        puts player
    end
  end
end

# case number_rolled
# when number_rolled < 3 (웬 케이스 쓸 때는 경우가 확실해야함. 범위를 주지 말고)
#   player.blam
# when number_rolled < 5 && number_rolled > 2
#   puts "#{player.name} is skipped"
# else player.w00t
# end
