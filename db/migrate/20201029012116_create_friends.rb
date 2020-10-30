class CreateFriends < ActiveRecord::Migration[5.2]
  def change
    create_table :friends do |t|
      t.integer :friend_request_id
      t.integer :friend_id

      t.timestamps
    end
  end
end
