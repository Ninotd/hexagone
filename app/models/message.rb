class Message < ApplicationRecord
  belongs_to :user
  belongs_to :shop
  validates :content, presence: true, allow_blank: false
  validates :sender_id, presence: true

  after_create :broadcast_message

  private

  def broadcast_message
    ActionCable.server.broadcast("shop_#{shop.id}_user_#{sender_id}", {
      message_partial: ApplicationController.renderer.render(
        partial: "messages/message",
        locals: { message: self, user_is_messages_author: false }
      ),
      current_user_id: user.id
    })
  end
end
