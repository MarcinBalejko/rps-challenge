feature 'Restarts the game' do
    scenario 'can return to the start' do
        sign_in_and_play
        click_button('rock')
        click_button('Try Again')
        expect(page).to have_content 'Rock Paper Scissors'
    end
end