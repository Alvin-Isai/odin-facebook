class RemoveColumnFriendAFromFriends < ActiveRecord::Migration[5.2]
  def change
    remove_column :friends, :friend_a
    remove_column :friends, :friend_b
  end
end
