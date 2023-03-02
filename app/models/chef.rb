class Chef < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :cat_name, presence: true, uniqueness: true
  validates :speciality, presence: true
  validates :price, presence: true
  validates :price, numericality: { only_integer: true }
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_cat_name_and_speciality, against: [ :cat_name, :speciality ], using: {tsearch: { prefix: true }}
end
