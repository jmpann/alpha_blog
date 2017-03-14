Rails.application.routes.draw do

resources :articles
  # get 'articles/new', to: 'articles#new', as: "new_article"
  # post 'articles', to: 'articles#create'
  # get 'articles/:id', to: 'articles#show', as: "article"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
