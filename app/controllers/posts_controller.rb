class PostsController < ApplicationController
  before_action :check_for_login

  def index
    @posts = Post.all.sort_by {|post| post.created_at}.reverse!
  end

  def show
    @post = Post.find params[:id]
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new post_params
    if params[:post][:photo].present?
      req = Cloudinary::Uploader.upload(params[:post][:photo])
      post.photo = req["public_id"]
      post.user_id = @current_user.id
      post.save 
    end
    redirect_to post_path(post)
  end

  def edit
    @post = Post.find params[:id]
  end

  def update
    post = Post.find params[:id]
    if params[:post][:photo].present?
      req = Cloudinary::Uploader.upload(params[:post][:photo])
      phost.photo = req["public_id"]
    end    
    post.update_attributes post_params
    redirect_to post_path(post)
  end

  def destroy
    post = Post.find params[:id]
    post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:photo, :location, :description, :comment_id)
  end
end
