class AddFriendAIdToFriends < ActiveRecord::Migration[5.2]
  def change
    add_column :friends, :friend_a_id, :integer
    add_column :friends, :friend_b_id, :integer

  
  end
end
