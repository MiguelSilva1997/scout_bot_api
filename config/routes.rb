Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      resources :events, only: [:index, :show]

      resources :news

      post "/login", to: "sessions#create"
      delete "/logout", to: 'session#destroy'

      resources :relationships, only: [:create, :destroy]

      get "/home", to: "main#index"

      resources :users do
        member do
          get :following, :followers
        end
      end

      resources :player_profiles

      resources :teams do
        resources :events, only: [:new, :create]
      end

      resources :scout_profiles
    end
  end
end
