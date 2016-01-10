class Property < ActiveRecord::Base
  belongs_to :category

  validates :category_id, :title, presence: true
end
