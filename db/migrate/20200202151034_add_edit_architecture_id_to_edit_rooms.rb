class AddEditArchitectureIdToEditRooms < ActiveRecord::Migration[5.2]
  def up
    execute 'DELETE FROM edit_architectures;'
    execute 'DELETE FROM edit_profiles;'
    add_reference :edit_rooms, :edit_architecture, null: false, index: true
  end

  def down
    remove_reference :edit_rooms, :edit_architecture, index: true
  end
end
