Rails.application.routes.draw do

  resources :sessions, only:[:create, :destroy]
  resources :events

  namespace :api do
    namespace :v1 do

      namespace :players do
        resources :users
      end

      namespace :scouts do
        resources :users
      end

      namespace :teams do
        resources :users
        resources :events, only: [:new, :create]
      end

    end
  end
end
