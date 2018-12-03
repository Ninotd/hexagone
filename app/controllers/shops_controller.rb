class ShopsController < ApplicationController

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)
    @shop.city = City.find_by(name: params[:name])
  end

  private

  def set_shop
    @shop = Booking.find(params[:shop_id])
  end

  def shop_params
    params.require(:shop_review).permit(:name, :address, :description, :phone_number, city )
  end

end
