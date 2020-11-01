class FriendsController < ApplicationController
  def index
    if params[:search]
      @friends = User.where(email: params[:search])
    end
  end

  def show
  end

  def create
    @friends = Friend.new(friend_params)
    @friend_requests = FriendRequest.find(params[:friend_requests_id])
    if @friends.save
      @friend_requests.destroy
      redirect_to friend_requests_path
    end
  end

  def update
  end

  def destroy
  end

  private

  def friend_params
    params.permit(:friend_a_id, :friend_b_id)
  end
end
