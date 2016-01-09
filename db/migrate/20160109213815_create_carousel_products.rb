class CreateCarouselProducts < ActiveRecord::Migration
  def change
    create_table :carousel_products do |t|
      t.string :photo
      t.references :product, index: true, foreign_key: true
      t.string :description

      t.timestamps null: false
    end
  end
end
