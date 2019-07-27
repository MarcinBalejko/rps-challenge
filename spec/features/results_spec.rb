feature 'Open results page' do
    scenario 'can enter the results page' do
        sign_in_and_play
        click_button('rock')
        expect(page).to have_content 'Results'
    end
end
feature 'Saves selected option' do
    scenario 'Can select one of the 3 options' do
        sign_in_and_play
        click_button('paper')
        expect(page).to have_css("img[src*='hand-paper-solid.svg']")
    end
end
feature 'Player can win' do
    scenario 'Player\'s choice beats computer\'s ' do
        sign_in_and_play
        click_button('paper')
        allow_any_instance_of(Game).to receive(:selector).and_return(:rock)
        expect(page).to have_content 'You won, Marcin!'
    end
end
feature 'Player gets random name' do
    scenario 'Player gets \'Player\' name if no name entered' do
        visit('/')
        click_button 'Start'
        expect(page).to have_content 'Let\'s begin, Player!'
    end
end