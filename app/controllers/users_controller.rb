class UsersController < ApplicationController

before_action :current_user, only: [:edit, :update, :show, :destroy]

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to user_url(user)
    else
      redirect_to new_user_path
    end
  end

  def show
    @posts = current_user.posts
  end

  def edit
  end

  def update
  end

  def index
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

end
