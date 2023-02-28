class Chef < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :cat_name, presence: true, uniqueness: true
  validates :speciality, presence: true
  validates :price, presence: true
end
