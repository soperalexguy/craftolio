Rails.application.routes.draw do
  get 'comment/create'
  devise_for :users

  root to: 'home#home'
  get '/' => 'home#home'
  post '/' => 'home#home'

  get '/profile/:id' => 'profile#show'
  get '/profiles' => 'profile#index'
  get '/profiles/new' => 'profile#new'
  get '/profile/:id/edit' => 'profile#edit'
  patch '/profiles' => 'profile#update'
  put '/profile/:id' => 'profile#update'
  post '/profiles' => 'profile#create'
  delete '/profile/:id' => 'profile#destroy'

  post '/posts' => 'post#create'

  post '/comments' => 'comment#create'
  get '/contact' => 'contact#contact'
  get '/posts/:id/comments' => 'post#getComments'
end
