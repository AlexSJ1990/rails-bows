class CreateBows < ActiveRecord::Migration[5.2]
  def change
    create_table :bows do |t|
      t.string :color
      t.string :size
      t.string :description
      t.string :photo
      t.integer :num_in_stock
      t.integer :price_cents
      t.timestamps
    end
  end
end
