class ReviewsController < ApplicationController
  def create
    @plant = Plant.find(params[:plant_id])
    @review = Review.new(review_params)
    @review.plant = @plant
    @review.user = current_user
    if @review.save
      redirect_to plant_path(@plant)
    else
      render "plants/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
