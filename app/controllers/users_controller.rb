class UsersController < ApplicationController

before_action :set_current_user, only: [:edit, :update, :destroy]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Thoughful Blog #{@user.first_name}"
      session[:user_id] = @user.id
      redirect_to user_url(@user)
    else
      redirect_to sign_up_path
    end
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
  end

  def edit
  end

  def update
    if @user.update(user_params)
      flash[:success] = "Your information was successfully updated"
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def index
    @users = User.all
  end

  def destroy
  end

  private

  def set_current_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :first_name, :last_name, :password, :password_confirmation)
  end

end
