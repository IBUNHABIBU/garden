require 'rails_helper'

RSpec.describe 'Navbar', type: :system do
  before { driven_by(:selenium_chrome_headless) }

  it 'shows all main navigation links', js: true do
    visit root_path
    within 'nav[data-controller="navbar"]' do
      expect(page).to have_link('Home', href: root_path)
      expect(page).to have_link('About', href: about_path)
      expect(page).to have_link('Contact', href: contact_path)
      # expect(page).to have_link('Services', href: services_path)
      expect(page).to have_link('Projects', href: projects_path)
      expect(page).to have_link('Blog', href: blog_path)
    end
  end

  context 'on mobile', js: true do
    before do
      resize_window_to_mobile
      visit root_path
    end

    it 'shows mobile menu toggle' do
      expect(page).to have_css('button[data-action="click->navbar#toggle"]')
    end

    it 'toggles menu when clicked' do
      toggle = find('button[data-action="click->navbar#toggle"]')
      toggle.click
      expect(page).to have_selector('div[data-navbar-target="mobileMenu"]', visible: true)

      toggle.click
      expect(page).to have_no_selector('div[data-navbar-target="mobileMenu"]', visible: true)
    end
  end
end
