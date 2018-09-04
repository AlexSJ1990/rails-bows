class Bow < ApplicationRecord
  has_many :orders
  has_many :reviews
  has_many :users, through: :orders
  monetize :price_cents

  validates :size, presence: true
  validates :color, presence: true
end
