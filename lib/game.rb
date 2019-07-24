require_relative 'player'
class Game
    attr_reader :players, :selector_result
    def initialize(player_1)
        @players = player_1
        @selector_result = nil
    end
    def player_1
        @players
    end
    def player_1_choice
        player_1.choice
    end
    def selector
        options = ["rock", "paper", "scissors"]
        @selector_result = options.sample
    end
end