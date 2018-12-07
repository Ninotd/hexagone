class ShopsController < ApplicationController
  before_action :set_shop, only: [:new, :create, :show]

  def index
    @shops = Shop.all
  end

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
    @city = City.find(params[:city_id])
    @markers = [{
        lng: @shop.longitude,
        lat: @shop.latitude
      }]
    @months = {
      "1" => 'janvier',
      "2" => 'février',
      "3" => 'mars',
      "4" => 'avril',
      "5" => 'mai',
      "6" => 'juin',
      "7" => 'juillet',
      "8" => 'aout',
      "9" => 'septembre',
      "10" => 'octobre',
      "11" => 'novembre',
      "12" => 'décembre'
    }
  end

  def search_shop
    @results = PgSearch.multisearch(params[:query_shops])
    # splitter les results entre events et shops
    @city = City.find(params[:city_id])
    @shops = []
    @events = []
    @results.each do |result|
      if result.searchable.class.to_s  == "Shop"
        @shops << result.searchable
      elsif result.searchable.class.to_s == "Event"
        @events << result.searchable
      end
    end
    @months = {
      "1" => 'janvier',
      "2" => 'février',
      "3" => 'mars',
      "4" => 'avril',
      "5" => 'mai',
      "6" => 'juin',
      "7" => 'juillet',
      "8" => 'aout',
      "9" => 'septembre',
      "10" => 'octobre',
      "11" => 'novembre',
      "12" => 'décembre'
    }
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
