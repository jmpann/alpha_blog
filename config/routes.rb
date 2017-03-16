Rails.application.routes.draw do

resources :posts
  # get 'posts/new', to: 'posts#new', as: "new_post"
  # post 'posts', to: 'posts#create'
  # get 'posts/:id', to: 'posts#show', as: "post"


  root to: 'static#index'
  get '/about', to: 'static#about', as: "about"
end
