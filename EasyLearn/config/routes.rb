Rails.application.routes.draw do
  resources :videos

  root "login#index"
  
  get '/search', to: "search#index"
  get '/preferences', to: "preferences#index"
  get '/home', to: "home#index"
  get "/player", to: "player#index"
  get '/settings', to: "settings#index"
  
  get "/videos/new", to: "videos#new"

end
