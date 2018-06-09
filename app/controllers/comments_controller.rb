class CommentsController < ApplicationController
  def new
    @picture = Picture.find(params[:picture_id])
  end

  def create
    @comment = @picture.comments.create(
      comment_params.merge(commenter: current_user.username, user_id: current_user.id)
    )
    redirect_to post_path(@post)
  end
end
