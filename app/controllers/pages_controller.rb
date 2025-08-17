class PagesController < ApplicationController
  def home
    @hero = HeroSection.first || HeroSection.new
    @routes = RoutesSection.first || RoutesSection.new
    @why_us = WhyUsSection.first || WhyUsSection.new
    @cta = CtaSection.first || CtaSection.new
    @testimonials = Testimonial.all.limit(3)
    @services = Service.all.limit(3)
  end
end
