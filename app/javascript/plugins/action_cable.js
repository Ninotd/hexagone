const initShopChat = () => {
  const shopChat = document.getElementById('shop-chat');
  if (shopChat) {
    const shopId = shopChat.dataset.shopId;
    const userId = shopChat.dataset.userId;
    const currentId = shopChat.dataset.currentId;

    const scrollLastMessageIntoView = () => {
      const messages = document.querySelectorAll(".message-content");
      const lastMessage = messages[messages.length - 1];
      if (lastMessage !== undefined) {
        lastMessage.scrollIntoView();
      }
    }

    App[`shop_${shopId}_user_${userId}`] = App.cable.subscriptions.create(
      { channel: 'ShopsChannel', shop_id: shopId, user_id: userId },
      { received: (data) => {

          // append message dans la new
          // if (data.current_user_id != currentId)
          if (data.current_user_id != currentId) {
          const messagesContainer = document.querySelector('.message-feed');
          console.log(data);
          console.log(data.message_partial)
          messagesContainer.insertAdjacentHTML('beforeend', data.message_partial)
          scrollLastMessageIntoView();
        }
       }
      }
    )
  }
}

export { initShopChat }
