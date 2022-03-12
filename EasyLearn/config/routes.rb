Rails.application.routes.draw do

  
  root "home#index"
  get "signup", to: "users#new"
  get "login", to: "sessions#new"
  get "edit", to: "users#editUser"
  post "edit", to: "users#edit"
  post "login", to: "sessions#create"
  get "logout", to: "sessions#destroy"
  resources :users, except: [:new]
  get 'search', to: "search#index"
  get 'preferences', to: "preferences#index"
  get "player", to: "player#index"
  resources :videos
  
  get "videos", to: "videos#index"
  get "videos/new", to: "videos#new"
  post "videos", to: "videos#create"

  resources :events
  
  get '/events', to: "events#index"
  post 'delete_event', to: "events#delete"
end
