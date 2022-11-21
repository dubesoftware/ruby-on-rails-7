class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user, flash[:notice] = "Welcome back, Lucy"
    else
    end
  end
  
  def destroy
  end
end
