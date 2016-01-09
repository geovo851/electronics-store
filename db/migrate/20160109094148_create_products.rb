class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.references :category, index: true, foreign_key: true
      t.string :photo
      t.decimal :price, precision: 15, scale: 2, default: 0
      t.string :description
      t.string :model
      t.float :weight
      t.integer :units_in_stock

      t.timestamps null: false
    end
  end
end
