class ShopsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "shop_#{params[:shop_id]}_user_#{params[:user_id]}"
  end
end
