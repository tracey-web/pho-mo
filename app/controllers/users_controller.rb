
class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
    check_for_admin
    @users = User.all
  end

  def show
      @user = User.find params[:id]
  end

  def delete
    if @current_user.admin?
      @user = User.find params[:id]
    else
      @user = @current_user
    end
  end
  
  def edit
    if @current_user.admin?
      @user = User.find params[:id]
    else
      @user = @current_user
    end
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end