class AddCurrencyToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :state, :string
    add_column :orders, :teddy_sku, :string
  end
end
