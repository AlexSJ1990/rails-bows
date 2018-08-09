class Order < ApplicationRecord
  belongs_to :bow
  belongs_to :user
  monetize :amount_cents
end
