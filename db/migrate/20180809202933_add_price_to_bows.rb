class AddPriceToBows < ActiveRecord::Migration[5.2]
  def change
    remove_column :bows, :price_cents
    add_monetize :bows, :price, currency: { present: false }
  end
end
