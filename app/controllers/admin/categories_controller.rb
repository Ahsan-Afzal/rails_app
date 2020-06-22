class Admin::CategoriesController < Admin::AdminController

def dashboard
  @categories = Category.all
end

  def update

    @category = Category.find_by(id: params[:id]) #objct 
    if !@category
      render 'template/error404'
    else
    @category.update(category_params)  #update document read krni hai 
    redirect_to categories_dashboard_path
    end

  end

  def edit
    @category = Category.find_by(id: params[:id]) #find_by_id
    if !@category
      render 'template/error404'
    end
  end
#what is flash  ---- #filters (before_action) #layouts 
  def destroy
    @category = Category.find_by(id: params[:id])
    if !@category
      render 'template/error404'
    else
    @category.destroy
    redirect_to categories_dashboard_path
    end
  end

  def new
    @category = Category.new
  end

  def show 
    @category = Category.find_by(id: params[:id])
    if !@category
      render 'template/error404'
    end
  end

  def create

    @category= Category.new(category_params) #Model.create
    @category.save
    redirect_to categories_dashboard_path

  end

    private 
    def category_params
      params.require(:category).permit(:name, :parent_id)
    end
end
