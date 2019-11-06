Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :users
  resources :movies
  resources :libraries

  get '/actors' => 'actors#index'
  get '/actors/:id' => 'actors#show', :as => 'actor'
  get '/directors' => 'directors#index'
  get '/directors/:id' => 'directors#show', :as => 'director'
  get '/genres' => 'genres#index'
  get '/genres/:id' => 'genres#show', :as => 'genre'

  get '/movies/new/:imdbID' => 'movies#new'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/search' => 'pages#search'
  get '/result' => 'pages#result'
  post '/result' => 'movies#show'



  put '/movies/:id/add_or_remove' => 'libraries#add_or_remove',:as => 'add_or_remove_from_library'

  get '/movies/add_movie/:id' => 'movies#add_movie', :as => 'add_movie'

  get '/suggestion' => 'pages#suggestion', :as => 'suggestion'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
