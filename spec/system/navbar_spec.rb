require 'rails_helper'

RSpec.describe 'Navbar', type: :system do
  before { visit root_path }

  it 'shows all main navigation links' do
    within 'nav' do
      expect(page).to have_link('Home', href: root_path)
      expect(page).to have_link('About', href: about_path)
      expect(page).to have_link('Contact', href: contact_path)
      expect(page).to have_link('Services', href: services_path)
      expect(page).to have_link('Projects', href: projects_path)
      expect(page).to have_link('Blog', href: blog_path)
    end
  end

  context 'on mobile', js: true do
    before { resize_window_to_mobile }

    it 'shows mobile menu toggle' do
      expect(page).to have_css('.navbar__mobile-toggle')
    end

    it 'toggles menu when clicked' do
      find('.navbar__mobile-toggle').click
      expect(page).to have_css('.navbar__menu--open')

      find('.navbar__mobile-toggle').click
      expect(page).not_to have_css('.navbar__menu--open')
    end
  end
end