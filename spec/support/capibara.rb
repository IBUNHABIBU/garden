def resize_window_to_mobile
  Capybara.current_session.driver.browser.manage.window.resize_to(375, 667)
end