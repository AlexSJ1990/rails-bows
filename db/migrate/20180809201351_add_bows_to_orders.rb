class AddBowsToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :bow, foreign_key: true
  end
end
