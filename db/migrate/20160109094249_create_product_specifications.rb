class CreateProductSpecifications < ActiveRecord::Migration
  def change
    create_table :product_specifications do |t|
      t.references :product, index: true, foreign_key: true
      t.references :property, index: true, foreign_key: true
      t.text :value

      t.timestamps null: false
    end
  end
end
