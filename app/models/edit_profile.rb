class EditProfile < ApplicationRecord

  validates :surname, presence: true

  has_one_attached :image
  belongs_to :user

  scope :recent, -> { order(created_at: :desc)}

  private

  def set_nameless_name
    self.name = '名前なし' if surname.blank?
  end

end
