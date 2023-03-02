class Costume < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  validates :product_name, :price, :photo, :pet_type, presence: true
  validates :pet_type, inclusion: { in: ["cat", "dog", "bird", "reptile", "small mammal"] }
end
