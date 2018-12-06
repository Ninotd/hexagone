class Shop < ApplicationRecord
  belongs_to :user
  belongs_to :city
  has_many :events, dependent: :destroy
  has_many :shop_photos, dependent: :destroy
  has_many :messages
  has_many :favorites, dependent: :destroy


  CATEGORIES = ["Beauté", "Fleuriste", "Pressing", "Cordonnier", "Maison et Déco", "Alimentation", "Mode", "Sport"]

  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :category, inclusion: {in: CATEGORIES}


  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch
  multisearchable against: [ :name, :category, :description ]
end
