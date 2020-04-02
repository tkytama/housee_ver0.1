require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with a surname, email, and lastname" do
    user = User.new(
      surname:  "Sumner",
      lastname: "Yosio",
      date_of_birth: "19941130",
      password: "111111",
      email:      "tester@example.com",
    )
    expect(user).to be_valid
  end
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
      first_name: "Joe",
      last_name: "Tester",
      email: "tester@example.com",
      password: "dottle-noubeau-pabilion-tights-furze"
    )
    user = User.new(
      first_name: "Jane",
      last_name: "Tester",
      email: "tester@example.com",
      password: "dottle-noubeau-pavilion-tights-furze,"
    )
    user.valid?
    expect(user.errors[:email]).to include("has already been taken")
  end




end
