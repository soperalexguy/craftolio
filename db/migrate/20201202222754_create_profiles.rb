class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :picture, default: "/images/profile-pics/blank.png"
      t.string :fname, null: false
      t.string :lname, null: false
      t.string :username, null: false, unique: true
      t.string :bio
      t.timestamps
    end
  end
end
