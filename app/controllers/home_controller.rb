class HomeController < ApplicationController
  def index
    @hero = Hero.first
  end
end
