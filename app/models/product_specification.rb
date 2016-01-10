class ProductSpecification < ActiveRecord::Base
  belongs_to :property
  belongs_to :product

  validates :product_id, :property_id, :value, presence: true
end
