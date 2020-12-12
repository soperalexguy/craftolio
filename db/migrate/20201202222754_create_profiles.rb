class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :fname, null: false
      t.string :lname, null: false
      t.string :username, null: false, unique: true
      t.string :bio
      t.references :user
      t.timestamps
    end
  end
end
