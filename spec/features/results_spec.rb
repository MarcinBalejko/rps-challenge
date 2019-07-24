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
        expect(page).to have_css("img[src*='images/paper.jpg']")
    end
end