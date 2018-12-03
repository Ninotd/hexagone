class Shop < ApplicationRecord
  belongs_to :user
  belongs_to :city
  has_many :events, dependent: :destroy

  CATEGORIES = ["Beauté", "Fleuriste", "Pressing", "Cordonnier", "Maison et Déco", "Alimentation", "Mode", "Sport"]

  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :category, inclusion: {in: CATEGORIES}

  include AlgoliaSearch

  algoliasearch do
    attribute :name, :category, :description
  end
end
