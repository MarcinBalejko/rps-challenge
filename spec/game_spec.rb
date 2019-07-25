require 'game'
describe Game do 
    subject(:game) { described_class.new(player_1) }
    let(:player_1) { Player.new('Dave') }
    it 'retrieves Player 1' do
        expect(subject.players).to eq(player_1)
    end
    describe '#player_1_choice' do
        it 'retrieves Player\'s choice' do
            player_1.make_choice("rock")
            expect(game.player_1_choice).to eq "rock"
        end
    end
    describe '#selector' do
        it 'randomly selects rock, paper or scissors' do
            options = ["rock", "paper", "scissors"]
            subject.selector
            expect(options).to include(subject.selector_result)
        end
    end
end