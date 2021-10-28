class PagesController < ApplicationController
  def home
    @posts = Post.order(created_at: :desc)
    @users = User.where.not(id: @current_user.id).limit(5)
  end
end
