Rails.application.routes.draw do

  root 'static_pages#index'
  get 'register' => 'static_pages#register'
  get 'login' => 'static_pages#login'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :sitters, only: [:create, :show]
  resources :owners, only: [:create, :show]

end
