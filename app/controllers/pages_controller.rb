class PagesController < ApplicationController
  def show
    @page = Page.find_by!(slug: params[:id])
    @services = Service.limit(3)
    @testimonials = Testimonial.limit(3)
  rescue ActiveRecord::RecordNotFound
    render file: Rails.root.join("public/404.html"), status: :not_found, layout: false
  end
end
