require_relative 'player'
require_relative 'game'
player1 = Player.new("moe",100)
player2 = Player.new("jas",200)
player3 = Player.new("Elli",240)

nutgame = Game.new("nutgame")
nutgame.add_player(player1)
nutgame.add_player(player2)
nutgame.add_player(player3)
nutgame.play
