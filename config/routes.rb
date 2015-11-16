Rails.application.routes.draw do

  root 'static_pages#index'

  resources :sitters, only: [:new, :create, :show]
  resources :owners, only: [:new, :create, :show]

end
