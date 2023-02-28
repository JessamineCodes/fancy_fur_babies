class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :costumes
  has_many :bookings
  validates :email, presence: true, uniqueness: true
  # validates :first_name, :last_name, presence: true
end
