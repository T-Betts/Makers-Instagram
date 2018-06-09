class CommentsController < ApplicationController
  def new
    @picture = Picture.find(params[:picture_id])
  end
end
