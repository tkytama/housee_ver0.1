require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user, surname: 'Sumner', lastname: 'Yosio', date_of_birth: '19941130', password: '111111', email: 'tester@example.com') }
  subject { user.valid? }
  it { is_expected.to be_truthy }

  it "is invalid without a surname" do
    user2 = User.new(surname: nil)
    user2.valid?
    expect(user2.errors[:surname]).to include("を入力してください")
  end

  it "is invalid without a first name"

  it "is invalid without a last name"

  it "is invalid without an email address"

  it "is invalid with a duplicate email address"

  it "returns a user's full name as a string"

  it "is invalid with a duplicate email address" do
    User.create(
      surname: "Jane",
      lastname: "Tester",
      email: "tester@example.com",
      password: "dottle-noubeau-pavilion-tights-furze,"
    )
    user = User.new(
      surname: "Jane",
      lastname: "Tester",
      email: "tester@example.com",
      password: "dottle-noubeau-pavilion-tights-furze,"
    )
    user.valid?
    expect(user.errors[:email]).to include("はすでに存在します")
  end
  it "returns a user's full name as a string" do
    user = User.new(
      surname: "John",
      lastname: "Doe",
      email: "johndor@example.com#",
      password: "111"
    )
    expect(user.name).to eq "John Doe"
  end



end
