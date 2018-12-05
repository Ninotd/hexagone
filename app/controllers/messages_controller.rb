class MessagesController < ApplicationController
  def new
    @shop = Shop.find(params[:shop_id])
    @sender = User.find(params[:user_id])
    @message = Message.new
    @messages = @shop.messages.where(sender_id: params[:user_id])
  end

  def create
    @message = Message.new(message_params)
    @shop = Shop.find(params[:shop_id])
    @sender = User.find(params[:user_id])
    @message.shop = @shop
    @message.user = current_user
    @message.sender_id = @sender.id
    if @message.save
      # redirect_to chat_room_path(@chat_room)
    else
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
