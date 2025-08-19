class CtasController < ApplicationController
  before_action :set_cta, only: [:show, :edit, :update, :destroy]

  def index
    @ctas = Cta.all
  end

  def show
  end

  def new
    @cta = Cta.new
  end

  def edit
  end

  def create
    @cta = Cta.new(cta_params)

    if @cta.save
      redirect_to @cta, notice: 'Cta was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @cta.update(cta_params)
      redirect_to @cta, notice: 'Cta was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @cta.destroy
    redirect_to ctas_url, notice: 'Cta was successfully destroyed.'
  end

  private
    def set_cta
      @cta = Cta.find(params[:id])
    end

    def cta_params
      params.require(:cta).permit(:title, :subtitle, :button_text, :button_url, :background_color)
    end
end