class CreatePopularProducts < ActiveRecord::Migration
  def change
    create_table :popular_products do |t|
      t.references :product, index: true, foreign_key: true
      t.string :photo
      t.decimal :promotional_price, precision: 15, scale: 2, default: 0

      t.timestamps null: false
    end
  end
end
