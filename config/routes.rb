Rails.application.routes.draw do
  
  resources :users, only: [:index, :show, :create, :update]

  resources :orders, only: [:index, :show, :create]

  resources :drinks, only: [:index, :show, :create]
end
