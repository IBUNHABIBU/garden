class HomeController < ApplicationController
  def index
    @hero = Hero.first
    @featured_tours = 
  end
end
