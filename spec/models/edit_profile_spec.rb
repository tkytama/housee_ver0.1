require 'rails_helper'

RSpec.describe EditProfile, type: :model do
  describe "without a variable" do
    it "is without an office_name" do
      edit_profile = EditProfile.new(office_name: nil)
      edit_profile.valid?
      expect(edit_profile.errors[:office_name]).to include("を入力してください")
    end
  end
end
