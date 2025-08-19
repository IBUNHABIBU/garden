class TrekkingsController < ApplicationController
  before_action :set_trekking, only: %i[ show edit update destroy ]

  # GET /trekkings or /trekkings.json
  def index
    @trekkings = Trekking.all
  end

  # GET /trekkings/1 or /trekkings/1.json
  def show
  end

  # GET /trekkings/new
  def new
    @trekking = Trekking.new
  end

  # GET /trekkings/1/edit
  def edit
  end

  # POST /trekkings or /trekkings.json
  def create
    @trekking = Trekking.new(trekking_params)

    respond_to do |format|
      if @trekking.save
        format.html { redirect_to @trekking, notice: "Trekking was successfully created." }
        format.json { render :show, status: :created, location: @trekking }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @trekking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trekkings/1 or /trekkings/1.json
  def update
    respond_to do |format|
      if @trekking.update(trekking_params)
        format.html { redirect_to @trekking, notice: "Trekking was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @trekking }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @trekking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trekkings/1 or /trekkings/1.json
  def destroy
    @trekking.destroy!

    respond_to do |format|
      format.html { redirect_to trekkings_path, notice: "Trekking was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trekking
      @trekking = Trekking.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def trekking_params
      params.expect(trekking: [ :title, :duration, :difficulty, :overview_title, :overview_description, :content ])
    end
end
