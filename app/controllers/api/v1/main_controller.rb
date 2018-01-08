class Api::V1::MainController < ApplicationController

  def index
    render json: User.top_players
  end
end
