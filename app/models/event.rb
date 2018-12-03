class Event < ApplicationRecord
  belongs_to :shop

  EVENTS = ["Bon plan", "Nouveauté", "Evènement"]

  validates :name, presence: true
  validates :category, presence: true
  validates :description, presence: true
  validates :category, inclusion: {in: EVENTS}
end
