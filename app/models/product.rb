class Product < ApplicationRecord
validates :name, presence: true
validates :price_in_cents, numericality: { only_integer: true }
end
