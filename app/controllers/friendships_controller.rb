class FriendshipsController < ApplicationController

  def create
    @friends = Friendship.create_reciprocal_for_ids(current_user.id, params[:friend_id])
    @friend_requests = FriendRequest.find(params[:friend_requests_id])
    @friend_requests.destroy
    redirect_to friend_requests_path
  end

  def destroy
    Friendship.destroy_reciprocal_for_ids(current_user_id, params[:friend_id])
    redirect_to friend_requests_path
  end


  private

  def friend_params
    params.permit(:user_id, :friend_id)
  end
end
