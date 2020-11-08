class FriendRequestsController < ApplicationController
  def index
    @friend_requests = FriendRequest.where('to_user_id = ?', current_user.id)
  end

  def create
    @friend_requests = FriendRequest.new(friend_requests_params)
    if already_requested?
      flash[:notice] = "You've already sent a request"
      redirect_to users_path
    else
      @friend_requests.save
      redirect_to friend_requests_path
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

  def already_requested?
    FriendRequest.where(from_user_id: current_user.id, to_user_id: params[:to_user_id]).exists?
  end
end
