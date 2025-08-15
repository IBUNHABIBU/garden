class BookingsController < ApplicationController
   def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    
    if @booking.save
      redirect_to root_path, notice: "Thank you for your booking request! We'll contact you soon."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  
  def booking_params
    params.require(:booking).permit(:name, :email, :phone, :tour_type, :start_date, :end_date, :special_requests)
  end
end
