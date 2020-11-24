class ReviewsController < ApplicationController
  def create
    @plant = Plant.find(params[:plant_id])
    @review = Review.new(review_params)
    @review.plant = @plant
    if @plant.save
      redirect_to plant_path(@plant)
    else
      render "plant/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
