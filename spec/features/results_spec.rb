feature 'Open results page' do
    scenario 'can enter the results page' do
        visit('/')
        fill_in :player_1_name, with: 'Marcin'
        click_button 'Start'
        click_link('rock')
        expect(page).to have_content 'Results'
    end
end