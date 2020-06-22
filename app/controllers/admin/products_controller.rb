class Admin::ProductsController < Admin::AdminController

  def dashboard
    @products = Product.all
  end

  def new
    @product = Product.new()
  end

  def create
    
    @product = Product.new(product_params)
    @product.save
    redirect_to  products_dashboard_path
  end

  def update
    @product = Product.find_by(id: params[:id])
    if !@product
      render 'template/error404'
    else
    @product.update(product_params)
    redirect_to products_dashboard_path
    end
  end

  def edit
    @product = Product.find_by(id: params[:id])
    if !@product
      render 'template/error404'
    end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    if !@product
      render 'template/error404'
    else
    @product.destroy
    redirect_to products_dashboard_path
    end
  end
  def show
    @product = Product.find_by(id: params[:id])
    if !@product
      render 'template/error404'
    end
  end

 

  private
  def product_params
    params.require(:product).permit(:name, :description, :category_id, :price, :image)
  end
end
