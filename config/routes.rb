Rails.application.routes.draw do
  get 'admins/login'
  get 'admins/signup'
  get 'users/login'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :products, path: '/admin/products'

  root 'products#index'
end
