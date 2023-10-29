require 'rails_helper'

RSpec.describe 'Deleting a city', type: :feature do
  scenario 'success' do
    City.create!(name: 'NYC')
    visit cities_path
    expect(page).to have_content('NYC')

    click_on 'Destroy'

    # accept_confirm do
    #   click_on 'Destroy'
    # end
    expect(page).not_to have_content('NYC')
  end
end