class User < ApplicationRecord
  has_many :chefs
  has_many :bookings
  validates :email, presence: true
  validates :email, format: { with: /\A.*@.*\.com\z/ }
  validates :encrypted_password, presence: true
  validates :encrypted_password, length: { minimum: 6 }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
