class PurchasesController < ApplicationController
  def create
    @plant = Plant.find(params[:plant_id])
    @purchase = Purchase.new(purchase_params)
    @purchase.plant = @plant
    @purchase.user = current_user
    if @purchase.save
      redirect_to plant_path(@plant)
    else
      render "plants/show"
    end
  end

  private

  def purchase_params
    params.require(:purchase).permit(:quantity, :value)
  end
end
