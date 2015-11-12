Rails.application.routes.draw do

  resources :sitters, only: [:new, :create, :show]

end
