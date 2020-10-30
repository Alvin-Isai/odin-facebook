class CreateFriendRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :friend_requests do |t|
      t.integer :to_user_id
      t.integer :from_user_id

      t.timestamps
    end
  end
end
