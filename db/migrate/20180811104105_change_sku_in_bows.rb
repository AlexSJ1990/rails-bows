class ChangeSkuInBows < ActiveRecord::Migration[5.2]
  def change
    add_column :bows, :sku, :string
    remove_column :bows, :bow_sku
  end
end
