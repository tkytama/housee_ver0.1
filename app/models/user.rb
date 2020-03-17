class User < ApplicationRecord
  has_secure_password

  validates :surname, presence: true
  validates :email, presence: true, uniqueness: true

  has_many :edit_profiles
  has_many :edit_architectures
  has_many :edit_rooms
end
