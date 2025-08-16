class PagesController < ApplicationController
  def home
    @page = Page.find_by(slug: 'home') || Page.new(title: 'Home', content: 'Welcome to our website')
    @services = Service.limit(3)
    @testimonials = Testimonial.limit(3)

        @hero_slides = [
      {
        title: "Discover Your Perfect Adventure",
        subtitle: "Explore the world's most breathtaking destinations with our expert guides",
        image_url: 'hyundai.jpeg'
      },
      {
        title: "Luxury Travel Experiences",
        subtitle: "Indulge in premium accommodations and exclusive services",
        image_url: 'team.png'
      },
      {
        title: "Unforgettable Memories",
        subtitle: "Create stories worth telling for a lifetime",
        image_url: 'team.jpg'
      }]
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
