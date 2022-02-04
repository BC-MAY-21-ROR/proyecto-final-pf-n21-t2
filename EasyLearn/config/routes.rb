Rails.application.routes.draw do
  root "login#index"
  get "/player", to: "player#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
