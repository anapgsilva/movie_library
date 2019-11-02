Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :users
  resources :actors
  resources :directors
  resources :genres
  resources :movies
  resources :libraries

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
