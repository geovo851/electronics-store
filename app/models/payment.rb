class Payment < ActiveRecord::Base
  validates :type_of_payment, presence: true
end
