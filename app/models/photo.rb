class Photo < ActiveRecord::Base
  belongs_to :product

  validates :product_id, :small, :large, presence: true
end
