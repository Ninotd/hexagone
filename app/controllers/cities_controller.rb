class CitiesController < ApplicationController
  def search_city
    @city = City.find_by(name: params[:query])
    if @city.nil?
      flash[:alert] = "Nous n'avons pas encore référencé cette ville."
      redirect_to root_path
    end
    @best_events = @city.events.first(3)
    @incoming_events = incoming_events
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

  def incoming_events
    last_events = Event.where("start_date >= ?", Date.today)
    last_events_ordered = last_events.order("start_date")
    return last_events_ordered.first(3)
  end
end
