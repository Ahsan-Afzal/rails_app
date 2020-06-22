class Admin::UsersController < Admin::AdminController
  def dashboard
    @users = User.all
  end

  def update
  end

  def destroy
    debugger
    User.find(params[:id]).destroy

    redirect_to users_dashboard_path
  end

  def new
  end

  def edit
  end

  def update
  end
end
