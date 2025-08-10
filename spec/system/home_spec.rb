require 'rails_helper'

RSpec.describe 'Simple test', type: :system do
  it 'can visit the home page' do
    visit root_path
    expect(page).to have_content('Welcome') # adjust text to match your home page
  end
end