Rails.application.routes.draw do
  get 'comment/create'
  devise_for :users

  root to: 'home#home'
  get '/' => 'home#home'
  post '/' => 'home#home'

  resources :profile

  post '/posts' => 'post#create'

  post '/comments' => 'comment#create'
  get '/contact' => 'contact#contact'
  get '/posts/:id/comments' => 'post#getComments'
end
