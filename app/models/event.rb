class Event < ApplicationRecord
  belongs_to :shop
  has_many :event_photos, dependent: :destroy

  EVENTS = ["Bon plan", "Nouveauté", "Evènement"]

  validates :name, presence: true
  validates :category, presence: true
  validates :description, presence: true
  validates :category, inclusion: {in: EVENTS}

  include PgSearch
  multisearchable against: [ :category, :description, :shop_category ]

end
