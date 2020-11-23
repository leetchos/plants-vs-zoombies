class PurchasesController < ApplicationController
  def new
    @plant = Plant.find(params[:plant_id])
    @purchase = Purchase.new
  end

  def create
    @user = current_user
  end

  def show
    @purchase = Purchase.find(params[:id])
  end
end
