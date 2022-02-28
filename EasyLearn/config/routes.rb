Rails.application.routes.draw do
  root "login#index"

  get '/preferences', to: "preferences#index"
  get '/home', to: "home#index"
  get "/player", to: "player#index"
  get '/settings', to: "settings#index"
  get '/events', to: "events#index"
  post '/create_event', to: "events#create"
  get '/events_new', to: 'events#new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
