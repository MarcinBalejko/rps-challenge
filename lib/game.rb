class Game
    attr_reader :players 
    def initialize(player_1)
        @players = player_1
    end
    def player_1
        @players
    end
end