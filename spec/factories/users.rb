FactoryBot.define do
  factory :user do
    it "has a valid factory" do
      expect(FactoryBot.build(:user)).to be_valid
    end

  end
end
