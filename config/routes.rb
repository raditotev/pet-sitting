Rails.application.routes.draw do

  root 'pages#index'
  get 'register'               => 'pages#register'
  get 'login'                   => 'pages#login'
  post 'login'                  => 'sessions#create'
  delete 'logout'             => 'sessions#destroy'
  get 'profile'                 => 'pages#profile'
  get 'board'                  => 'pages#board'
  get 'appointments'      => 'pages#appointments'
  post 'appointments'     => 'appointments#create'
  patch 'appointments' => 'appointments#update'

  resources :sitters, only: [:create]
  resources :owners, only: [:create]

end
