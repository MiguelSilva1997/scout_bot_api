class User < ApplicationRecord
  has_secure_password
  has_one :player_profile
  has_one :scout_profile
  has_many :user_teams
  has_many :teams, through: :user_teams
  has_many :active_relationships, class_name: "Relationship",
                                  foreign_key: "follower_id",
                                  dependent: :destroy

  has_many :passive_relationships, class_name: "Relationship",
                                   foreign_key: "followed_id",
                                   dependent: :destroy

  has_many :following, through: :active_relationships,  source: :followed
  has_many :followers, through: :passive_relationships, source: :follower


  enum role: [:player, :scout, :team, :admin]

  def self.top_players
    joins(:player_profile).where(role: "player").order("player_profiles.rating DESC")
  end
end
