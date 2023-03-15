Rails.application.routes.draw do
  # resources :resumes, only: [:index, :new, :destroy]

  get 'syndicates/index'
  get 'syndicates/blog'
  get 'syndicates/about'
  get 'syndicates/contact'
  get 'syndicates/guard'
  get 'syndicates/service'
  get 'syndicates/careers'
  get 'syndicates/single'

  


  root 'sessions#new'


  get '/signup', to: 'users#new'
  post '/users', to: 'users#create'

  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  get '/signout', to: 'sessions#destroy'
  # post '/insert' , to: 'syndicates#new'
  post '/insert' , to: 'syndicates#create'

end