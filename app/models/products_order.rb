class ProductsOrder < ActiveRecord::Base
  belongs_to :order
  belongs_to :product

  validates :order_id, :product_id, presence: true
  validates :price, :quantity, presence: true, numericality: { greater_than_or_equal_to: 0.001 }
end
