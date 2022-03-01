Rails.application.routes.draw do

  root "home#index"
  get "signup", to: "users#new"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  resources :users, except: [:new]
  get 'search', to: "search#index"
  get 'preferences', to: "preferences#index"
  get "player", to: "player#index"
  get 'settings', to: "settings#index"
  resources :events
  get '/events', to: "events#index"
  post '/create_event', to: "events#create"
  get '/events', to: 'events#new'

end
