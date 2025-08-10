module WindowHelpers
    def resize_window_to_mobile
        page.driver.browser.manage.window.resize(375, 812)
    end 

    def resize_window_default
    # Typical desktop resolution
       page.driver.browser.manage.window.resize_to(1280, 800)
    end
end