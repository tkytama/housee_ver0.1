class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :surname
      t.string :lastname
      t.date :date_of_birth
      t.string :password_digest

      t.timestamps
      t.index :email, unique: true
    end
  end
end
