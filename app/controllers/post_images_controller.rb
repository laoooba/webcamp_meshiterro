class PostImagesController < ApplicationController
  def new
    @post_image = PostImage.new

  end

  def create
    @post_iamge = PostImage.new(post_image_params)
    @post_image.user_id = current_user.id
    @post_iamge.save
    redirect_to post_iamge_path
  end

  def index
    @post_iamges = PostImage.all
  end

  def show
  end

  def destroy
  end

  private
  def post_image_params
    params.require(:post_image).permit(:shop_name, :image, :caption)
  end


end
