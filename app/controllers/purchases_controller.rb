class PurchasesController < ApplicationController
  def new
    @plant = Plant.find(params[:plant_id])
    @purchase = Purchase.new
  end

  def create
    @user = current_user
  end

  def show
  end
end
