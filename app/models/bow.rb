class Bow < ApplicationRecord
  has_many :orders
  has_many :reviews
  belongs_to :user
  monetize :price_cents
end
