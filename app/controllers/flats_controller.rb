class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]

  def index
    @flats = Flat.all
  end

  def show
    # set_flat
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.create(set_flat_params)
    if @flat
      redirect_to flat_path(@flat)
    else
      render :new
    end

  end

  def edit
    #set_flat
  end

  def update
    @flat.update(set_flat_params)
    # raise
    redirect_to flat_path(@flat)
  end

  def destroy
    @flat.delete
    redirect_to flats_path
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def set_flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests, :city)
  end
end

