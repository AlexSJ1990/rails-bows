class AddSkuToBows < ActiveRecord::Migration[5.2]
  def change
    add_column :bows, :bow_sku, :string
  end
end
