class ProductsController < ApplicationController

  def index

    @categories = Category.all
    @products = Product.where(category_id: params[:category_id])
    # @category = Category.find(params[:category_id])
    # @products = @category.products
  end

  def show

    @product = Product.find(params[:id])
    
  end
end
