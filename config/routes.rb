Rails.application.routes.draw do

  root 'static_pages#index'
  get 'register' => 'static_pages#register'
  get 'login' => 'static_pages#login'

  resources :sitters, only: [:new, :create, :show]
  resources :owners, only: [:new, :create, :show]

end
