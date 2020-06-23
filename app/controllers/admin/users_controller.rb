class Admin::UsersController < Admin::AdminController
  def dashboard

    @users = User.all

  end

 

  def destroy

    User.find(params[:id]).destroy

    redirect_to users_dashboard_path

  end

end
