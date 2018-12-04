class City < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :shops, dependent: :destroy
  has_many :events, through: :shops

  include PgSearch
  pg_search_scope :search_by_name, against: [:name], using: {
    tsearch: { prefix: true }
  }
end
