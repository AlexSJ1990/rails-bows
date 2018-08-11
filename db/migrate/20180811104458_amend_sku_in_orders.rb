class AmendSkuInOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :bow_sku, :string
    remove_column :orders, :teddy_sku
  end
end
