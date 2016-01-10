class Category < ActiveRecord::Base
  belongs_to :category
  has_many :categories
  has_many :properties, dependent: :destroy

  validates :title, presence: true
end
