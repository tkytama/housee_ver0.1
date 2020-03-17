class CreateEditArchitectures < ActiveRecord::Migration[5.2]
  def change
    create_table :edit_architectures do |t|
      t.string :architect
      t.string :architect_title
      t.string :architect_comment
      t.integer :completion_year
      t.integer :completion_month
      t.string :address
      t.integer :address_id
      t.integer :picture_id
      t.timestamps
    end
  end
end
