class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :fname
      t.string :lname
      t.string :occupation
      t.text :bio
      t.integer :user_id

      t.timestamps
    end
  end
end
