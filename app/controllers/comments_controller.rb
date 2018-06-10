class CommentsController < ApplicationController
  def new
    @picture = Picture.find(params[:picture_id])
  end

  def index
    @picture = Picture.find(params[:picture_id])
  end

  def create
    @picture = Picture.find(params[:picture_id])
    @comment = @picture.comments.create(comment_params.merge(author: current_user.username, user_id: current_user.id))
    redirect_to picture_comments_url
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_back(fallback_location: picture_comments_url)
  end

  def edit
    @picture = Picture.find(params[:picture_id])
    @comment = @picture.comments.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params.merge(author: current_user.username, user_id: current_user.id))
    redirect_to picture_comments_url
  end

  def comment_params
    params.require(:comment).permit(:author, :body, :comment_id, :user_id)
  end
end
