class CreateVisits < ActiveRecord::Migration[5.2]
  def change
    create_table :visits do |t|
      t.references :user, foreign_key: true
      t.references :park, foreign_key: true
      t.float :distance
      t.date :date

      t.timestamps
    end
  end
end
