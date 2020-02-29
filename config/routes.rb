Rails.application.routes.draw do
  root 'success#index'
  resources :properties
  resources :property_types
  resources :property_categories
  resources :users
  resources :user_categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
