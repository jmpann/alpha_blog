Rails.application.routes.draw do

resources :articles
  # get 'articles/new', to: 'articles#new', as: "new_article"
  # post 'articles', to: 'articles#create'
  # get 'articles/:id', to: 'articles#show', as: "article"


  root to: 'static#index'
end
