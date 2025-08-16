# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"

# Add Swiper# config/importmap.rb
# Add these pins for Swiper and its dependencies
pin "swiper", to: "https://cdn.jsdelivr.net/npm/swiper@10.3.1/swiper-bundle.min.js"
pin "ssr-window", to: "https://cdn.jsdelivr.net/npm/ssr-window@4.0.2/+esm"
pin "dom7", to: "https://cdn.jsdelivr.net/npm/dom7@4.0.6/+esm"