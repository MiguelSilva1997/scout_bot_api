class User < ApplicationRecord
  has_secure_password
  has_one :player_profile
  has_one :scout_profile
  has_many :user_teams
  has_many :teams, through: :user_teams 

  enum role: [:player, :scout, :team, :admin]
end
