class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :status
      t.references :payment, index: true, foreign_key: true
      t.text :delivary_adress
      t.boolean :order, default: false
      t.integer :phone_number
      t.decimal :total_sum, precision: 15, scale: 2, default: 0

      t.timestamps null: false
    end
  end
end
