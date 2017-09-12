Rails.application.routes.draw do
  resources :reviews
  resources :cities
  resources :reservations
  resources :guests
  resources :hotels

  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  post '/reservations/new', to: 'reservations#new'

  # patch '/reservation', to: 'reservations#new', as: 'reservation'
end
