Rails.application.routes.draw do
  root to: "cat_pictures#index"
  resources :cat_pictures
end
