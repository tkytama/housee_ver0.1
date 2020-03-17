class ChangeEditProfilesArchtectNameNotNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :edit_profiles, :surname, false
  end
end
