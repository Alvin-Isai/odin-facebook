class FriendRequestsController < ApplicationController
  def index
    @friend_requests = FriendRequest.where('to_user_id = ?', current_user.id)
  end

  def create
    @friend_requests = FriendRequest.new(friend_requests_params)
    if @friend_requests.save
      redirect_to friendships_path
    else
      render friendships_path
    end
  end

  def destroy
    @friend_requests = FriendRequest.find(params[:id])
    @friend_requests.destroy
    redirect_to friend_requests_path
  end

  private
  
  def friend_requests_params
    params.permit(:from_user_id, :to_user_id)
  end
end
