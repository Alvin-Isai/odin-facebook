class FriendsController < ApplicationController
  def index
    if params[:search]
      @friends = User.where(email: params[:search])
    end
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
