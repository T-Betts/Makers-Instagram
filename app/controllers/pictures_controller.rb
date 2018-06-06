class PicturesController < ApplicationController
  def new
    @picture = Picture.new
  end

  def show
  end

  def create
    @picture = Picture.create(picture_params.merge(user_id: current_user.id))
    redirect_to welcome_index_url
  end

  def destroy
    @picture = Picture.find(params[:id])
      if @picture.present?
        @picture.destroy
      end
  end

  def picture_params
    params.require(:picture).permit(:image)
  end
end
