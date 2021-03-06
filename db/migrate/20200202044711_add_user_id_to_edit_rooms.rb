class AddUserIdToEditRooms < ActiveRecord::Migration[5.2]
  def up
    execute 'DELETE FROM edit_profiles;'
    add_reference :edit_rooms, :user, null: false, index: true
  end

  def down
    remove_reference :edit_rooms, :user, index: true
  end
end
