class EditRoom < ApplicationRecord
  belongs_to :edit_architecture
  scope :search, ->(term) {
    where("LOWER(room_comment) LIKE ?", "%#{term.downcase}%")
  }
end
