Rails.application.routes.draw do
  
  #get 'categories/index'
  #get 'categories/show'
  #get 'categories/update'
  #get 'categories/edit'
  #get 'categories/destroy'
  #get 'categories/new'
  #get 'categories/create'
  #get 'users/login'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :products, path: '/admin/products' , only: [:edit ]
  resources :products, except: [:edit, :destroy]
  resources :admin
  resources :categories , path: '/admin/categories'

  root 'products#index'
end
