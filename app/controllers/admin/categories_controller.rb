class Admin::CategoriesController < Admin::AdminController

def dashboard
  @categories = Category.all
end

  def update

    @category = Category.find_by(id: params[:id])  

    if !@category
      
      render 'template/error404'

    else

      @category.update(category_params)  
      redirect_to categories_dashboard_path

    end

  end

  def edit

    @category = Category.find_by(id: params[:id]) 

    if !@category
      render 'template/error404'
    end

  end

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

    @categories = Category.all
    @category = Category.find_by(id: params[:id])

    if !@category

      render 'template/error404'

    end

  end

  def create

    @category= Category.new(category_params)
    
    if @category.save
      redirect_to categories_dashboard_path
    else 
      render 'new'
    end
  end

    private

    def category_params

      params.require(:category).permit(:name, :parent_id)

    end
end
