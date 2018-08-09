class AddUsersToOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :bow_id
    add_reference :orders, :user, foreign_key: true
  end
end
