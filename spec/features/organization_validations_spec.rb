require 'rails_helper'

feature 'Organization' do

  scenario 'Create organization fields cannot be blank' do
    visit root_path
    click_on "Organizations"
    click_on "New Organization"
    click_on "Create Organization"
    expect(page).to have_content("Name can't be blank")
  end

end
