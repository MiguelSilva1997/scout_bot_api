class Api::V1::UsersController < ApplicationController

  def index
    render json: User.all
  end

  def create

  end

  def show
    render json: User.find(current_user.id)
  end

  def following

  end

  def followers

  end
end
