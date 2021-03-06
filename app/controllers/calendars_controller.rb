class CalendarsController < ApplicationController

  def index
    @event_calendars = []
    @offer_calendars = []
    calendars = current_user.calendars
    calendars.each do |calendar|
      if calendar.event.category == "Evènement"
        @event_calendars << calendar
      else
        @offer_calendars << calendar
      end
    end
    @favorites = current_user.favorites
    @city = City.first
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
    @event = Event.find(params[:event_id])
    search_calendar = current_user.calendars.where(event_id: params[:event_id])
    if search_calendar == []
      calendar = Calendar.new(event_id: params[:event_id], user_id: current_user.id)
      calendar.save
      city = City.find(params[:city_id])
      respond_to do |format|
        format.html { search_cities_path(query: city.name) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
      # redirect_to search_cities_path(query: city.name)
    else
      city = City.find(params[:city_id])
      redirect_to search_cities_path(query: city.name)
    end
  end

  def destroy
    @calendar = Calendar.find(params[:id])
    @calendar.destroy
  end

end
