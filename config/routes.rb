Rails.application.routes.draw do

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: 'session#destroy'


  resources :events, only: [:index, :show]

  resources :news


  namespace :api do
    namespace :v1 do
      get "/home", to: "main#index"

      resources :users

      resources :player_profiles

      resources :teams do
        resources :events, only: [:new, :create]
      end

      resources :scout_profiles
    end
  end
end
