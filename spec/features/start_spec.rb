feature 'Open the main page' do
    scenario 'show the title' do
        expect(page).to have_content 'Rock Paper Scissors'
    end
end