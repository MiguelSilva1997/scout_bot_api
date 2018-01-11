class Api::V1::UsersController < ApplicationController

  def index
    render json: User.all
  end

  def create
    user = User.create(user_params)
    render json: user
  end

  def show
    render json: User.find(current_user.id)
  end

  def following

  end

  def followers

  end

  def user_params
    params[:user][:role] = params[:user][:role].to_i
    params.require(:user).permit(:first_name, :last_name, :email, :password, :phone_number, :role)
  end
end
