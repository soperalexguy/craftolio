Rails.application.routes.draw do
  get '/' => 'home#home'
  post '/' => 'home#home'
  get '/profile/:id' => 'profile#show'
  get '/profiles' => 'profile#index'
  get '/contact' => 'contact#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
