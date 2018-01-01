class UserSerializer < ActiveModel::Serializer
  attributes :id,
             :first_name,
             :last_name,
             :email,
             :phone_number,
             :scout_profile,
             :player_profile,
             :teams

end
