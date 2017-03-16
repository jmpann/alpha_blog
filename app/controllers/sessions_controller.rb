class SessionsController < ApplicationController

  def new
    binding.pry
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      binding.pry
      redirect_to user_path(user)
    else
      redirect_to login_path
    end
  end

  def destory
    session[:user_id] = nil
    redirect_to root_path
  end

end
