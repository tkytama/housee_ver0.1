require 'rails_helper'

RSpec.describe EditRoom, type: :model do
# 検索文字列に一致するメモを返すこと
  before do
    @user = User.create(
      surname: "Joe",
      lastname: "Tester",
      email: "joetester@example.com",
      password: "dottle-nouveau-pavilion-tights-furze",
    )

    @project = @user.edit_architectures.create(
      architect: "Test Project",
      edit_profile_id: 1,
    )
  end
  it "returns edit_rooms that match the search term" do

    note1 = @project.edit_rooms.create(
      room_comment: "This is the first note.",
      user_id: @project.user_id
    )
    note2 = @project.edit_rooms.create(
      room_comment: "This is the second note.",
      user_id: @project.user_id
    )
    note3 = @project.edit_rooms.create(
      room_comment: "First, preheat the oven.",
      user_id: @project.user_id
    )

    expect(EditRoom.search("first")).to include(note1, note3)
    expect(EditRoom.search("first")).to_not include(note2)
    expect(EditRoom.search("room_comment")).to be_empty
  end
end
