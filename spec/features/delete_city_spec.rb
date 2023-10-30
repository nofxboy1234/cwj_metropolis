require 'rails_helper'

RSpec.describe 'Deleting a city', type: :feature do
  scenario 'success' do
    City.create!(name: 'NYC')
    visit cities_path
    sleep(3)
    expect(page).to have_content('NYC')

    click_on 'Destroy'
    sleep(3)
    accept_alert
    expect(page).not_to have_content('NYC')
  end
end