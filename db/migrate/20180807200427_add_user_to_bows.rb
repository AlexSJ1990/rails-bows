class AddUserToBows < ActiveRecord::Migration[5.2]
  def change
    add_reference :bows, :user, foreign_key: true
  end
end
