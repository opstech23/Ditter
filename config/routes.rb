Rails.application.routes.draw do

  get 'sessions/new'

  resources :users
  root 'pages#index'

  # get 'pages/index'

  get '/home' => 'pages#home'

  get '/profile' => 'pages#profile'

  get '/explore' => 'pages#explore'

  # get  '/sign_up' => 'users#new'
  # post '/sign_up' => 'users#create'

  resources :users #, only: [:new, :create, :destroy]
  resources :sessions #, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
