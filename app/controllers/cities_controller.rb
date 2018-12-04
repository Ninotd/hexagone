class CitiesController < ApplicationController
  def index
    @best_events = Event.all.first(3)
    @best_shops = Shop.all.first(3)
    @last_events = Event.all.first(3)
  end

  def search_city
    @city = City.find_by(name: params[:query])
    if @city.nil?
      flash[:alert] = "Nous n'avons pas encore référencé cette ville."
      redirect_to root_path
    end
  end
end
