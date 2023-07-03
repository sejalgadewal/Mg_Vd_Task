class RenamePriceInProducts < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :price, :cost
  end
end
