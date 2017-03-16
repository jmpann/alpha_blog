Rails.application.routes.draw do

  resources :users, except: [:new]
  resources :posts
  # get 'posts/new', to: 'posts#new', as: "new_post"
  # post 'posts', to: 'posts#create'
  # get 'posts/:id', to: 'posts#show', as: "post"


  root to: 'static#index'
  get '/about', to: 'static#about', as: "about"
  get '/signup', to: 'users#new', as: "sign_up"
  get '/login', to: 'sessions#new', as: "login"
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

end
