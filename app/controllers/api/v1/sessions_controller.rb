class Api::V1::SessionsController < ApplicationController

  def create
    if params['provider']
      if user = User.find_by(uid: params["uid"])
        user.token = params["credentials"]["token"]
        user.save
        render json: user
      else
        user = User.from_omniauth(params)
        render json: user
      end
    else
      user = User.find_by(email: params[:session][:email])
      if user && user.password_digest == (params[:session][:password])
        render json: user
      else
        flash[:notice] = "Your username or password is incorrect."
      end
    end
  end
end
