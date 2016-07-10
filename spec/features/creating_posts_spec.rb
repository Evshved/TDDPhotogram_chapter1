require 'rails_helper'

feature 'Creating post' do
  scenario 'can create a job' do
    visit '/'
    click_link 'New Post'
    attach_file('Image', "spec/files/images/town.jpg")
    fill_in 'Caption', with: 'Dare is a town'
    click_button 'Create Post'
    expect(page).to have_content('Dare is a town')
    expect(page).to have_css("img[src*='town.jpg']")
  end
end
