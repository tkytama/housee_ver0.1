require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with a lastname, email, and password" do
    user = User.new(
      lastname:  "Sumner",
      email:      "tester@example.com",
    )
    expect(user).to_not be_valid
  end
  it "is invalid without a lastname" do
    user = User.new(lastname:nil)
    user.valid?
    expect(user.errors[:lastname]).to_not include("can't be blank")
  end

  it "is invalid without a first name"

  it "is invalid without a last name"

  it "is invalid without an email address"

  it "is invalid with a duplicate email address"

  it "returns a user's full name as a string"
end
