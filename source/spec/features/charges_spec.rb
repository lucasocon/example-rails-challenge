require 'rails_helper'

RSpec.feature "Charges", type: :feature do
  context 'index page' do
    scenario 'should show correct list of titles' do
      visit charges_path

      within '.charges' do
      expect(page).to have_selector('h1', count: 3)
      expect(page).to have_selector('ul', count: 3)
        expect(page).to have_content 'Failed Charges'
        expect(page).to have_content 'Disputed Charges'
        expect(page).to have_content 'Successful Charges'
      end
    end

    scenario 'should show items on lists' do
      visit charges_path
      expect(page).to have_selector('.failed', count: 5)
      expect(page).to have_selector('.disputed', count: 5)
      expect(page).to have_selector('.successful', count: 10)
    end
  end
end
