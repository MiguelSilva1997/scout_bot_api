require 'rails_helper'

RSpec.describe "Session Create" do
  describe "POST session/create" do
    it "returns the user info" do
      user = create(:user, role: 0)
      player = create(:player_profile, user: user)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      get "/api/v1/users/#{user.id}"

      user = JSON.parse(response.body, symbolize_names: true)

      expect(user[:first_name]).to eq("MyString")
      expect(user[:email]).to eq('test')
      expect(user[:player_profile][:primary_position]).to eq("MyString")
    end
  end
end
