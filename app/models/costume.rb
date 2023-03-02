class Costume < ApplicationRecord
  belongs_to :user
  include PgSearch::Model
  pg_search_scope :search_by_name_and_desc_and_type,
  against: [ :product_name, :details, :pet_type],
  using: {
    tsearch: { prefix: true }  }
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  validates :product_name, :price, :photo, :pet_type, presence: true
  validates :pet_type, inclusion: { in: ["cat", "dog", "bird", "reptile", "small mammal"] }
end
