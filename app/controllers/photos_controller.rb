class PhotosController < ApplicationController
 
  def index
  end

  def new
    @photo = current_user.photos.new
  end

  def create
    @photo = current_user.photos.new(photo_params)
    if @photo.save
      redirect_to user_path(current_user)
    else 
      render 'new'
    end
  end

  def edit
  end

  def create
  end

  def show
  end

  private

  def photo_params
    params.require(:photo).permit(:title, :url)
  end
end
