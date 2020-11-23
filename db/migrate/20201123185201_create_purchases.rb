class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.integer :quantity
      t.float :value
      t.references :user, foreign_key: true
      t.references :plant, foreign_key: true
      t.timestamps
    end
  end
end
