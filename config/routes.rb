Rails.application.routes.draw do

  #Posts controller routes
  resources :posts
  root to: "posts#home"
  # root to: "posts#public"
  get '/public/:genre' => 'posts#public', as: :post_genre
  get '/posts' => 'posts#index'
  get '/home' => 'posts#home'

  # Users controller routes
  get '/signup' => 'users#new'
  resources :users

  #Sessions controller routes
  get     '/login' => 'sessions#new'
  post    '/login' => 'sessions#create'
  delete  '/logout' => 'sessions#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
