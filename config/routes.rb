Rails.application.routes.draw do
  
  resources :users, only: [:index, :show]

  resources :orders, only: [:index, :show]

  resources :drinks, only: [:index, :show]
end
