require 'rails_helper'

RSpec.describe 'Travel Tours Form', type: :feature do
  let(:user) { create(:user) } # Assuming you have authentication
  let(:travel_tour) { build(:travel_tour) }
  let(:existing_tour) { create(:travel_tour, :with_image, :with_gallery) }

  before do
    sign_in user # If authentication is required
    visit new_travel_tour_path # or edit_travel_tour_path(existing_tour)
  end

  describe 'form rendering' do
    it 'displays all form fields' do
      expect(page).to have_field('Name')
    end

  end

end