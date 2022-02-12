Rails.application.routes.draw do
  root "login#index"
  
  get '/search', to: "search#index"
  get '/preferences', to: "preferences#index"
  get '/home', to: "home#index"
  get "/player", to: "player#index"
  get '/settings', to: "settings#index"
end
