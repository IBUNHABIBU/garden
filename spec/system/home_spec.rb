require 'rails_helper'

RSpec.describe 'Home', type: :system do
  before { driven_by(:selenium_chrome_headless) }
  it 'can visit the home page' do
    visit root_path
    expect(page).to have_content('Welcome')  
  end
end