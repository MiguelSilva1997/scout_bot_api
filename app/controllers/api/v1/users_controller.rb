class UsersController < ApplicationController

  def index
    render json: User.all
  end

  def show
    render json: User.find(current_user.id)
  end

  def method_name

  end

end
