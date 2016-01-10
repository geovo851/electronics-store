class CarouselProduct < ActiveRecord::Base
  belongs_to :product

  validates :photo, :product_id, :description, presence: true
end
