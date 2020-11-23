class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.float :price
      t.text :description
      t.integer :quantity
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
