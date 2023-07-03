class AddForiegnKey < ActiveRecord::Migration[7.0]
  def change
    add_reference :orders, :users, foriegn_key: true
  end
end
