class AddUserRefToOrder < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :orders, null: false, foreign_key: true
  end
end
