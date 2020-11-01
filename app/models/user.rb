class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :to_users, foreign_key: 'to_user_id', class_name: 'Friend_request'
  has_many :from_users, foreign_key: 'from_user_id', class_name: 'Friend_request'

  has_many :friends, ->(current_user) { where('friend_a_id = ? OR friend_b_id = ?', current_user.id, current_user.id) }
  has_many :friendships, through: :friends
end
