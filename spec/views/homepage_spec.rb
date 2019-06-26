require 'rails_helper'

feature 'visit homepage' do
  before do
    visit root_path
  end

  scenario 'successfully' do
    expect(current_path).to eq('/')
  end

  scenario 'and view logo' do
    expect(page).to have_content('QueroMudar')
  end
end
