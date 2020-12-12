class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :details
      t.references :post
      t.references :profile
      t.timestamps 
    end
  end
end
