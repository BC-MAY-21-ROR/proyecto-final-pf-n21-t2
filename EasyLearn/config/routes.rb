Rails.application.routes.draw do

  
  root "home#index"
  get "signup", to: "users#new"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  get "logout", to: "sessions#destroy"
  resources :users, except: [:new]
  get 'search', to: "search#index"
  get 'preferences', to: "preferences#index"
  get "player", to: "player#index"
  get "player/watch", to: "player#index"

  get 'settings', to: "settings#index"
  
  resources :videos
  
  get "videos", to: "videos#index"
  get "videos/new", to: "videos#new"
  post "videos", to: "videos#create"
end
