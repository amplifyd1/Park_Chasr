class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :image, :text
    add_column :users, :address, :string
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
    add_column :users, :username, :string
  end
end
