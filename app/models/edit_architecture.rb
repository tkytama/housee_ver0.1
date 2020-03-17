class EditArchitecture < ApplicationRecord
  has_one_attached :image
  has_many :edit_rooms
  belongs_to :user
end
