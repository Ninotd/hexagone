class City < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :shops, dependent: :destroy

  include AlgoliaSearch

  algoliasearch do
    attribute :name
  end
end
