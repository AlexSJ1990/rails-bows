class Order < ApplicationRecord
  belongs_to :bow
  belongs_to :user
end
