class Admin::AdminController < ApplicationController
  def index 
    @products = Product.all
    @categories = Category.all
    #@grid = initialize_grid(Product)
  end


end
