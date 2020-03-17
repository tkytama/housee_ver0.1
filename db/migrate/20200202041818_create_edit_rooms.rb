class CreateEditRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :edit_rooms do |t|
      t.string :room_title
      t.string :room_comment
      t.integer :office_id
      t.integer :architect_id
      t.integer :completion_year
      t.integer :completion_month
      t.string :address
      t.integer :address_id
      t.integer :function_id
      t.string :room_area
      t.string :room_name
      t.integer :picture_id


      t.timestamps
    end
  end
end
