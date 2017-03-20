class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(params[:email])
    if user && user.authenticate(params[:session][:password])
      flash[:success] = "You have successfully logged in"
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
