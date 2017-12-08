Rails.application.routes.draw do

  resources :sessions, only:[:create, :destroy]
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
