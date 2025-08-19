class CtaController < ApplicationController
  before_action :set_ctum, only: %i[ show edit update destroy ]

  # GET /cta or /cta.json
  def index
    @cta = Ctum.all
  end

  # GET /cta/1 or /cta/1.json
  def show
  end

  # GET /cta/new
  def new
    @ctum = Ctum.new
  end

  # GET /cta/1/edit
  def edit
  end

  # POST /cta or /cta.json
  def create
    @ctum = Ctum.new(ctum_params)

    respond_to do |format|
      if @ctum.save
        format.html { redirect_to @ctum, notice: "Ctum was successfully created." }
        format.json { render :show, status: :created, location: @ctum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ctum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cta/1 or /cta/1.json
  def update
    respond_to do |format|
      if @ctum.update(ctum_params)
        format.html { redirect_to @ctum, notice: "Ctum was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @ctum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ctum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cta/1 or /cta/1.json
  def destroy
    @ctum.destroy!

    respond_to do |format|
      format.html { redirect_to cta_path, notice: "Ctum was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ctum
      @ctum = Ctum.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def ctum_params
      params.expect(ctum: [ :title, :subtitle, :button_text, :button_url, :background_color ])
    end
end
