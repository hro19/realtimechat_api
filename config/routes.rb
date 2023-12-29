Rails.application.routes.draw do
  root "application#test"
  get '/api/test', to: 'application#test'

  namespace :api do
    resources :rooms, only: [:index, :create] do
      resources :messages, only: [:index, :create]
    end
  end
end