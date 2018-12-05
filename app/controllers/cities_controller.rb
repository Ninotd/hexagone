class CitiesController < ApplicationController

  def search_city
    @city = City.find_by(name: params[:query])
    if @city.nil?
      flash[:alert] = "Nous ne sommes pas encore présents dans cette ville. Revenez plus tard !"
      redirect_to root_path
      return
    end
    @best_events = @city.events.first(3)
    @incoming_events = incoming_events
    @recent_events = recent_events
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
    incoming_events = @city.events.where("start_date > ?", Date.today)
    incoming_events_ordered = incoming_events.order("start_date")
    return incoming_events_ordered.first(3)
  end

  def recent_events
    # selectionner les events dont la startdate est inferieure a la date du jour
    recent_events = @city.events.where("start_date <= ?", Date.today)
    # ordonner ces resultats en descending pour etre au plus proche de la date du jour
    recent_events_ordered = recent_events.order("start_date DESC")
    # selectionner les 3 premiers
    return recent_events_ordered.first(3).reverse
  end
end
