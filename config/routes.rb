Rails.application.routes.draw do
  root to: 'items#index'
  resources :carts
  resources :orders
  resources :users
  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
