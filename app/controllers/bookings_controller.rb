class BookingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_booking, only: %i[ show edit update destroy ]
  before_action :require_admin_access, only: %i[edit destroy]
  before_action :ensure_admin, only: :update_status

  # GET /bookings or /bookings.json
  def index
    if current_user.admin?
     @bookings = Booking.all
    else 
      @bookings = current_user.bookings.all
    end
  end

  def update_status
     @booking = Booking.find(params[:id])

    if Booking.statuses.keys.include?(params[:status])
      @booking.update(status: params[:status])
      redirect_to @booking, notice: "Status updated successfully."
    else
      redirect_to @booking, alert: "Invalid status."
    end
  end


  # GET /bookings/1 or /bookings/1.json
  def show
  end

  # GET /bookings/new
  def new
    @booking = Booking.new
    @booking.full_name  = current_user.display_name
    @booking.email = current_user.email
  end

  # GET /bookings/1/edit
  def edit
  end

  # POST /bookings or /bookings.json
  def create
    @booking = current_user.bookings.build(booking_params)

    respond_to do |format|
      if @booking.save
        format.html { redirect_to @booking, notice: "Booking was successfully created." }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookings/1 or /bookings/1.json
  def update
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to @booking, notice: "Booking was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookings/1 or /bookings/1.json
  def destroy
    @booking.destroy!

    respond_to do |format|
      format.html { redirect_to bookings_path, notice: "Booking was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def ensure_admin
     redirect_to root_path, alert: "Not authorized." unless current_user.admin?
    end
    def set_booking
      @booking = Booking.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def booking_params
      params.expect(booking: [ :full_name, :email, :phone, :trek_name, :start_date, :end_date, :number_of_people, :special_requests, :status ])
    end
end
