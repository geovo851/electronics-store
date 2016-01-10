class Product < ActiveRecord::Base
  belongs_to :category
  has_many :photos, dependent: :destroy
  has_many :product_specifications, dependent: :destroy
  has_many :properties, through: :product_specifications
  has_many :popular_products, dependent: :destroy
  has_many :carousel_products, dependent: :destroy
  has_many :products_orders
  has_many :orders, through: :products_orders

  validates :name, :category_id, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0.001 }

  def self.search(query, page)
    where("name LIKE :query", {query: "%#{query}%"}).order(:id).page(page).per(12)
  end
end
