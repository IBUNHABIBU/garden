class HomeController < ApplicationController
  def index
    @hero = Hero.first
    @featured_tours = TravelTour.featured.limit(3)
    @popular_destinations = Destination.featured.limit(3) # Add this line
    @testimonials = Testimonial.order(rating: :desc).limit(3) # Add this line
  end
end
