class Api::V1::SessionsController < ApplicationController

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.password_digest == (params[:session][:password])
      session[:user_id] = user.id
      render json: user
    else
      flash[:notice] = "Your username or password is incorrect."
    end
  end

  def destroy

  end
end
