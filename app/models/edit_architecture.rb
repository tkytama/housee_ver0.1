class EditArchitecture < ApplicationRecord
  validates :architect, presence: true, uniqueness:  { scope: :user_id }
  has_one_attached :image
  has_many :edit_rooms
  belongs_to :user
end
