class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :small
      t.string :large
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
