class CommentsController < ApplicationController
  before_action :find_post
  
  def create
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  def destroy
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

  private

  def comment_params
    params[:comment].permit(:user_id, :comment)
  end

  def find_post
    @post = Post.find(params[:post_id])
  end
end
