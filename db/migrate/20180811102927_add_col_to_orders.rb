class AddColToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :payment, :json
  end
end
