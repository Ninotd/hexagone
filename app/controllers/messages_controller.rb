class MessagesController < ApplicationController
  def new
    @shop = Shop.find(params[:shop_id])
    @sender = User.find(params[:user_id])
    @message = Message.new
    # Pour que s'affiche les messages du shop liés qu'à l'useur qui demande qq chose
    @messages = @shop.messages.where(sender_id: params[:user_id]).order(created_at: :asc)
    @footer = false
    @navbar = true
  end

  def create
    @message = Message.new(message_params)
    @shop = Shop.find(params[:shop_id])
    @sender = User.find(params[:user_id])
    @message.shop = @shop
    @message.user = current_user
    @message.sender_id = @sender.id
    if @message.save
      respond_to do |format|
        format.html
        format.js
      end
    else
      render :new
    end
  end


  private

  def message_params
    params.require(:message).permit(:content)
  end
end
