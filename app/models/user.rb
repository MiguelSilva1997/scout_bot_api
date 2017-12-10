class User < ApplicationRecord
  has_secure_password
  has_one :player_profile
  has_one :scout_profile

  enum role: [:default, :admin]
end
