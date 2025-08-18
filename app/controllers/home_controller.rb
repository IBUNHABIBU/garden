class HomeController < ApplicationController
  def index
    @hero = Hero.first
    @featured_tours = TravelTour.featured.limit(3)
  end
end
