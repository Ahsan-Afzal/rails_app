class ApplicationController < ActionController::Base
  
    rescue_from ActiveRecord::RecordNotFound, :with => :render_404

    def render_404
      render :template => "template/error404", :status => 404
    end
end
