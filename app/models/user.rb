class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :shops
  has_many :messages, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :calendars, dependent: :destroy


  validates :email, format: { with: /\A.*@.*\.com\z/ }
end
