Rails.application.routes.draw do
  root "login#index"

  get '/preferences', to: "preferences#index"
  get '/home', to: "home#index"
  get "/player", to: "player#index"
  get '/settings', to: "settings#index"
  get '/events', to: "events#index"
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
