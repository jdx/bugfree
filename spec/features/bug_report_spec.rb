require 'rails_helper'

describe "the bug report process" => :feature do
  it "works", js: true do
    100.times do 
      visit '/bugs'
      click_link 'New Bug'
      fill_in 'bug_title', with: 'homepage broken'
      click_button 'Create Bug'

      expect(page).to have_content('Bug was successfully created')
    end
  end
end