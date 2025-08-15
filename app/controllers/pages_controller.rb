class PagesController < ApplicationController
  def show
    @page = Page.find_by!(slug: params[:id])
    @services = Service.limit(3)
    @testimonials = Testimonial.limit(3)
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path, alert: "Page not found"
  end
end
