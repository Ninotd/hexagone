class CitiesController < ApplicationController
  def search_city
    @city = City.find_by(name: params[:query])
    if @city.nil?
      flash[:alert] = "Nous n'avons pas encore référencé cette ville."
      redirect_to root_path
    end
    @last_events = Event.all.first(3)
  end
end
