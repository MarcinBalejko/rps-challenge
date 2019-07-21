feature 'Player can enter his/her name' do
    scenario 'enters the name and switches to the next page' do
        visit('/')
        fill_in :player_1_name, with: 'Marcin'
        click_button 'Start'
        expect(page).to have_content 'Let\'s begin, Marcin!'
    end
end