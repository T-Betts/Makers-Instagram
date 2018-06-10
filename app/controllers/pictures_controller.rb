class PicturesController < ApplicationController
  def new
    @picture = Picture.new
  end

  def show
    @picture = Picture.find(params[:id])
    @comment = @picture.comments.build
  end

  def create
    @picture = Picture.create(picture_params.merge(user_id: current_user.id))
    redirect_to user_url(current_user.id)
  end

  def destroy
    @picture = Picture.find(params[:id])
    if @picture.present?
      @picture.destroy
    end
    redirect_back(fallback_location: user_url)
  end

  def picture_params
    params.require(:picture).permit(:image)
  end
end
