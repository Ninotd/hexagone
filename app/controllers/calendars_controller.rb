class CalendarsController < ApplicationController

  def index
    @calendars = current_user.calendars
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

  def create
    search_calendar = current_user.calendars.where(event_id: params[:event_id])
    if search_calendar == []
      calendar = Calendar.new(event_id: params[:event_id], user_id: current_user.id)
      calendar.save
      city = City.find(params[:city_id])
      redirect_to search_cities_path(query: city.name)
    else
      flash[:alert] = "Cette offre est déjà dans votre calendrier"
      city = City.find(params[:city_id])
      redirect_to search_cities_path(query: city.name)
    end
  end

  def destroy
    raise
    calendar = Calendar.find(params[:id])
    calendar.destroy
    redirect_to calendars_path
  end

end
