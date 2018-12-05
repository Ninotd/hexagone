const initShopChat = () => {
  const shopChat = document.getElementById('shop-chat');
  if (shopChat) {
    const shopId = shopChat.dataset.shopId;
    const userId = shopChat.dataset.userId;
    App[`shop_${shopId}_user_${userId}`] = App.cable.subscriptions.create(
      { channel: 'ShopsChannel', shop_id: shopId, user_id: userId },
      { received: (data) => {
          // append message dans la new

          console.log(data)
        }
      }
    )
  }
}

export { initShopChat }
