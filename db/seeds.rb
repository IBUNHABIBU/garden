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
# User.create!(
#   email: 'admin@example.com',
#   password: 'password123',
#   password_confirmation: 'password123',
#   admin: true,
#   # confirmed_at: Time.current # Skip confirmation if using confirmable
# )
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

# Create home page
Page.create!(
  title: 'Home',
  slug: 'home',
  content: '<h1>Welcome to ExploreWorld</h1><p>Your premium travel partner</p>',
  meta_title: 'ExploreWorld - Premium Tourism Services',
  meta_description: 'Discover the world with our premium tourism services and packages.'
)

# Create about page
Page.create!(
  title: 'About Us',
  slug: 'about',
  content: '<h1>About ExploreWorld</h1><p>We have been creating unforgettable experiences since 2010.</p>',
  meta_title: 'About ExploreWorld',
  meta_description: 'Learn about our company and our mission to provide exceptional travel experiences.'
)

# Create some services
Service.create!([
  {
    title: 'Guided Tours',
    description: 'Expert-led tours to the most fascinating destinations around the world.',
    icon: 'fas fa-map-marked-alt'
  },
  {
    title: 'Adventure Packages',
    description: 'Thrilling adventure activities for adrenaline seekers.',
    icon: 'fas fa-mountain'
  },
  {
    title: 'Luxury Getaways',
    description: 'Premium accommodations and exclusive experiences for discerning travelers.',
    icon: 'fas fa-umbrella-beach'
  }
])

# Create some testimonials
Testimonial.create!([
  {
    name: 'Sarah Johnson',
    content: 'The best travel experience I\'ve ever had! Everything was perfectly organized.',
    role: 'Travel Enthusiast'
  },
  {
    name: 'Michael Chen',
    content: 'Our guide was incredibly knowledgeable and made the trip unforgettable.',
    role: 'Photographer'
  },
  {
    name: 'Emma Williams',
    content: 'Exceptional service from start to finish. Will definitely book again!',
    role: 'Frequent Traveler'
  }
])