class PopularProduct < ActiveRecord::Base
  belongs_to :product

  validates :photo, :product_id, presence: true
end
