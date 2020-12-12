Rails.application.routes.draw do
  devise_for :users
  root to: 'home#home'
  get '/' => 'home#home'
  post '/' => 'home#home'
  get '/profile/:id' => 'profile#show'
  get '/profiles/new' => 'profile#new'
  post '/profiles' => 'profile#create'
  get '/profiles' => 'profile#index'
  get '/contact' => 'contact#contact'
  get '/posts/:id/comments' => 'post#getComments'
end
