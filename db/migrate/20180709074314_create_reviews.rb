class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :review_desc
      t.integer :stars
      t.references :bow, foreign_key: :true
      t.references :user, foreign_key: :true
      t.timestamps
    end
  end
end
