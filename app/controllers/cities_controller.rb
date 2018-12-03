class CitiesController < ApplicationController
  def index
    @best_events = Event.all.first(3)
    @best_shops = Shop.all.first(3)
  end
end
