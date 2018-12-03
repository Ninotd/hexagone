class ShopPhoto < ApplicationRecord
  belongs_to :shop
  mount_uploader :photo, PhotoUploader
end
