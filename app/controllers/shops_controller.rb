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
    @shop_events = @shop.events.where(category: "Evènement")
    @shop_offers = @shop.events.where(category: "Bon plan")
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
    @event = Event.new
  end

  def search_shop
    @filtered_results = []
    @city = City.find(params[:city_id])
    if params[:query_shops] == "events"
      @results = Event.where(category: "Evènement")
      @results.each do |result|
        @filtered_results << result
      end
    elsif params[:query_shops] == "offers"
      @results = Event.where(category: "Bon plan")
      @results.each do |result|
        @filtered_results << result
      end
    else
      @results = PgSearch.multisearch(params[:query_shops])
      @shops = []
      @events = []
      @offers = []
      @results.each do |result|
        if result.searchable.class.to_s == "Shop"
          @shops << result.searchable
        elsif result.searchable.category.to_s == "Evènement"
          @events << result.searchable
        elsif result.searchable.category.to_s == "Bon plan"
          @offers << result.searchable
        end
    end
    # splitter les results entre events et shops

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
