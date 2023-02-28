class Costume < ApplicationRecord
  belongs_to :user
  validates :product_name, :price, :img, :pet_type, presence: true
  validates :pet_type, inclusion: { in: ["cat", "dog", "bird", "reptile", "hamster"] }
end
