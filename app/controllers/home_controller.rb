class HomeController < ApplicationController
  def index
    @hero = Hero.with_attached_images.first
    @featured_tours = TravelTour.with_attached_image.with_attached_gallery_images.featured.limit(3)
    @popular_destinations = Destination.with_attached_images.featured.limit(3) # Add this line
    @testimonials = Testimonial.with_attached_avatar.order(rating: :desc).limit(3) # Add this line
    @cta =   @cta = {
      title: "Ready for Your Next Adventure?",
      subtitle: "Join thousands of happy travelers who've explored with us",
      button_text: "Book Now",
      button_url: travel_tours_path,
      secondary_button_text: "Contact Us",
      secondary_button_url: root_path,
      background_color: "green-800"
    }
  end

  private
    def default_cta
      OpenStruct.new(
        title: "Ready for Your Next Adventure?",
        subtitle: "Join thousands of happy travelers who've explored with us",
        button_text: "Book Now",
        button_url: tours_path,
        secondary_button_text: "Contact Us",
        secondary_button_url: contact_path
      )
   end
end
