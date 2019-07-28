require_relative 'game'
class Player
    attr_reader :name, :choice
    def initialize(name)
        @name = name
        @choice = nil
    end
    def make_choice(player_choice)
        @choice = player_choice
    end
    def change_default_name
        @name = "Unknown Player"
    end
end