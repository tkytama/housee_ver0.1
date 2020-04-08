require 'rails_helper'

RSpec.describe EditProfile, type: :model do
  describe "without a variable" do
    it "is without an office_name" do
      edit_profile = EditProfile.new(office_name: nil)
      edit_profile.valid?
      expect(edit_profile.errors[:office_name]).to include("を入力してください")
    end

    it "is without a surname" do
      edit_profile = EditProfile.new(surname: nil)
      edit_profile.valid?
      expect(edit_profile.errors[:surname]).to include("を入力してください")
    end

    it "is without an address" do
      edit_profile = EditProfile.new(address: nil)
      edit_profile.valid?
      expect(edit_profile.errors[:address]).to include("を入力してください")
    end
  end
end
