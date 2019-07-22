require_relative 'player'
class Game
    attr_reader :players 
    def initialize(player_1)
        @players = player_1
    end
    def player_1
        @players
    end
    def player_1_choice
        player_1.choice
    end
end