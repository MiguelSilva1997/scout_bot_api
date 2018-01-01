class SessionsController < ApplicationController

  def create
    binding.pry
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to users_path
    else
      flash[:notice] = "Your username or password is incorrect."
    end
  end
end
