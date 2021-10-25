class UsersController < ApplicationController
  def index
    @users = User.all {|user| user.username}
  end

  def show
    @user = User.find params[:id]
  end

  def new
    @user = User.new
  end

  def create
    user = User.create user_params
    redirect_to user # show page
  end

  def destroy
    user = User.find params[:id]
    user.destroy
    redirect_to users_path
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    user = User.find params[:id]
    user.update user_params
    redirect_to user
  end

  private
  def user_params 
    params.require(:user).permit(:username, :name, :password, :email, :avatar, :dob, :bio, :created_at, :updated_at, :following, :followers, :posts)
  end
end
