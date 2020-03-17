class CreateEditProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :edit_profiles do |t|
      t.string :office_name
      t.integer :office_id
      t.string :surname
      t.string :lastname
      t.string :position
      t.integer :postal_cord
      t.string :address
      t.integer :address_id
      t.string :average_cost
      t.integer :phon_number
      t.string :architect_concept
      t.string :office_url
      t.string :review_user
      t.string :review
      t.integer :review_id
      t.integer :average_review_point
      t.date :review_at
      t.string :relation
      t.integer :completion_at
      t.string :project_cost

      t.timestamps
    end
  end
end
