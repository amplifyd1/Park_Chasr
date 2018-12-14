class CreateParks < ActiveRecord::Migration[5.2]
  def change
    create_table :parks do |t|
      t.string :name
      t.text :description
      t.text :image
      t.text :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
