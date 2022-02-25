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
  
  # get "/videos/new", to: "videos#new"

end
