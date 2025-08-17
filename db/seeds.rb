# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# db/seeds.rb
HeroSection.create!(
  title: "Conquer Kilimanjaro With Local Experts",
  subtitle: "Authentic Tanzanian safari experiences since 2010",
  image: File.open(Rails.root.join('"app/assets/images/nyumbu.jpg"'))
  
WhyUsSection.create!(
  title: "Why Marvellous Safaris?",
  description: "We go beyond standard tours to deliver authentic experiences"
)

# Add similar seeds for other sections