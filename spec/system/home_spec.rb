require 'rails_helper'

RSpec.describe 'Home page', type: :system do
  before { driven_by(:selenium_chrome_headless) }
  it 'can visit the home page' do
    visit root_path
    expect(page).to have_content('Welcome') # adjust text to match your home page
  end
end