class UserSerializer < ActiveModel::Serializer
  attributes :id,
             :first_name,
             :last_name,
             :email,
             :role,
             :phone_number,
             :scout_profile,
             :player_profile,
             :teams

end
