class SessionsController < ApplicationController

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to api_v1_user_path(user.id)
    else
      flash[:notice] = "Your username or password is incorrect."
    end
  end

  def destroy
    
  end
end
