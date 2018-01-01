Rails.application.routes.draw do

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: 'session#destroy'


  resources :events, only: [:index, :show]
  resources :news

  resources :users

  namespace :api do
    namespace :v1 do
        resources :players

        resources :teams

        resources :scouts
    end
  end
end
