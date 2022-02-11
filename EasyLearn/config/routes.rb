Rails.application.routes.draw do
  get '/preferences', to: "preferences#index"
  get '/home', to: "home#index"
  get '/settings', to: "settings#index"
  root 'login#index'
  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
