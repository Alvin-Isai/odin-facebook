class UsersController < ApplicationController
  def index
    @users = User.where('id != ?', current_user.id)
  end

  def show
    @user = User.find_by_id(params[:id])
  end
end
