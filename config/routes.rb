Rails.application.routes.draw do
  devise_for :users

  #creates routes for home controller
  root to: 'home#home'
  get '/' => 'home#home'
  post 'request_contact', to: 'home#request_contact'

  #creates routes for profile controller
  get '/profile/:id' => 'profile#show'
  get '/profiles' => 'profile#index'
  get '/profiles/new' => 'profile#new'
  get '/profile/:id/edit' => 'profile#edit'
  patch '/profiles' => 'profile#update'
  put '/profile/:id' => 'profile#update'
  post '/profiles' => 'profile#create'

  #creates routes for post controller
  post '/posts' => 'post#create'
  delete '/posts/:id' => 'post#destroy'
  get '/posts/:id/comments' => 'post#getComments'

  #creates routes for comments and contact controller
  post '/comments' => 'comment#create'
  get '/contact' => 'contact#contact'
end
