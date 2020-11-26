class PlantsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @plants = Plant.all
    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @flats.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
  end

  def show
    @plant = Plant.find(params[:id])
    @review = Review.new
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.user = current_user
    if @plant.save
      redirect_to plant_path(@plant)
    else
      render 'new'
    end
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :description, :quantity, :price, :photo)
  end
end
