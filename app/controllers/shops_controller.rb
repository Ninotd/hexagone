class ShopsController < ApplicationController
  before_action :set_shop

  def new
    @shop = Shop.new
  end

  def create
    city = city_params[:city]
    city = City.find_by(name: city)
    @shop = Shop.new(shop_params)
    @shop.user = current_user
    @shop.city = city
    if @shop.save
      redirect_to root_path
    else
      raise
      render :new
    end
  end

  def show
  end

  private

  def set_shop
    @shop = Shop.find(params[:id])
  end

  def shop_params
    params.require(:shop).permit(:name, :address, :description, :phone_number, :category)
  end

  def city_params
    params.require(:shop).permit(:city)
  end
end
