class PagesController < ApplicationController
  def home
    @page = Page.find_by(slug: 'home') || Page.new(title: 'Home', content: 'Welcome to our website')
    @services = Service.limit(3)
    @testimonials = Testimonial.limit(3)
  end

  def about
    @page = Page.find_by(slug: 'about') || Page.new(title: 'About Us', content: 'About our company')
  end

  def contact
    @page = Page.find_by(slug: 'contact') || Page.new(title: 'Contact Us', content: 'Get in touch')
  end

  def show
    @page = Page.find_by!(slug: params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path, alert: "Page not found"
  end
end
  # rescue ActiveRecord::RecordNotFound
  #   render file: Rails.root.join("public/404.html"), status: :not_found, layout: false
