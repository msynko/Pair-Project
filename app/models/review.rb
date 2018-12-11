class Review < ApplicationRecord

  belongs_to :product

  validates :comment, presence: true
  validates :product_id, presence: true
  
end
