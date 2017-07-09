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
      if number_rolled >= 5
        player.w00t
        puts player
      elsif number_rolled >= 3 && number_rolled < 5
        puts "#{player} is skipped"
      elsif player.blam
        puts player
      end
    end
  end
end
