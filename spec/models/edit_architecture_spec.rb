require 'rails_helper'

RSpec.describe EditArchitecture, type: :model do
  it "does not allow dupline project names per user" do
    user = User.create(
      surname: "Joe",
      lastname: "Tester",
      email: "joetester@example.com",
      password: "aaaaaa",
    )

    user.edit_architectures.create(
      architect: "Test Project",
	    edit_profile_id: 1,
    )

    new_project = user.edit_architectures.build(
      architect: "Test Project",
	    edit_profile_id: 2,
    )

    new_project.valid?
    expect(new_project.errors[:architect]).to include("はすでに存在します")
  end

  it "allows two users to share a edit_architecture name" do
    user = User.create(
      surname: "Joe",
      lastname: "Tester",
      email: "joetester@example.com",
      password: "aaaaaa"
    )

    user.edit_architectures.create(
      architect: "Test Project",
	    edit_profile_id: 1,
    )
    other_user = User.crete(
      surname: "Jane",
      lastname: "Tester",
      email: "joetester@example.com",
      password: "aaaaaa"
    )
    other_edit_architecture = other_user.edit_architectures.build(
      architect: "Test Project",
	    edit_profile_id: 1,
    )

    expect(other_edit_architecture).to be_valid
  end
end
