class Product < ActiveRecord::Base
  belongs_to :category
  has_many :photos, dependent: :destroy
  has_many :product_specifications, dependent: :destroy
  has_many :properties, through: :product_specifications
end
