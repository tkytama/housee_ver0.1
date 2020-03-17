class AddEditProfileToEditArchitectures < ActiveRecord::Migration[5.2]
  def up
    execute 'DELETE FROM edit_architectures;'
    add_reference :edit_architectures, :edit_profile, null: false, index: true
  end

  def down
    remove_reference :edit_architectures, :edit_profile, index: true
  end

end
