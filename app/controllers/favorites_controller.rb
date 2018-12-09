class FavoritesController < ApplicationController

  def index
    @favorites = current_user.favorites
  end

  def create
    search_favorite = current_user.favorites.where(shop_id: params[:shop_id])
    if search_favorite == []
      favorite = Favorite.new(shop_id: params[:shop_id], user_id: current_user.id)
      favorite.save
      city = City.find(params[:city_id])
      redirect_to search_cities_path(query: city.name)
    else
      flash[:alert] = "Cette boutique est déjà dans vos favoris"
      city = City.find(params[:city_id])
      redirect_to search_cities_path(query: city.name)
    end
  end

  def destroy
    favorite = Favorite.find(params[:id])
    favorite.destroy
    redirect_to calendars_path
  end
end

