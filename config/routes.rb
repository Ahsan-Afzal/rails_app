Rails.application.routes.draw do
  
  devise_for :users
  
  delete "admin/users/:id" => "admin/users#destroy", as: :user

  # get 'admin/allcategories' ,to: 'admin/admin#categories', as: 'admin_allcategories'
  # get 'admin/allproducts' ,to: 'admin/admin#products', as: 'admin_allproducts'
  # get 'admin/allusers' ,to: 'admin/admin#users' , as: 'admin_allusers'

  get 'admin/products/dashboard' , to: 'admin/products#dashboard' , as: 'products_dashboard'
  get 'admin/pcategories/dashboard' , to: 'admin/categories#dashboard' , as: 'categories_dashboard'
  get 'admin/users/dashboard' , to: 'admin/users#dashboard' , as: 'users_dashboard'
  get 'user/dashboard' , to: 'user#dashboard' , as: 'user_dashboard'
  resources :admin , only: [:index] , module: "admin"

  namespace :admin do
    resources :products   
    resources :categories  
  end

  resources :products , only: [:show, :index]
  resources :categories , only: [:show, :index]
  resources :home
  
  root 'home#index'
end
