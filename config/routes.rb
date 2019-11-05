Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :users
  resources :actors
  resources :directors
  resources :genres
  resources :movies
  resources :libraries

  get '/movies/new/:imdbID' => 'movies#new'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/search' => 'pages#search'
  get '/result' => 'pages#result'
  post '/result' => 'movies#show'

  put '/movies/:id/add_or_remove' => 'libraries#add_or_remove',:as => 'add_or_remove_from_library'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
