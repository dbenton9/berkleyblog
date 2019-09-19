Rails.application.routes.draw do

  #Posts controller routes
  resources :posts
  # root to: "posts#index"
  root to: "posts#public"
  get '/public' => 'posts#public'
  get '/posts' => 'posts#index'

  # Users controller routes
  get '/signup' => 'users#new'
  resources :users

  #Sessions controller routes
  get     '/login' => 'sessions#new'
  post    '/login' => 'sessions#create'
  delete  '/logout' => 'sessions#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
