class UserController < ApplicationController

def dashboard
    if current_user
        @user = current_user
    end
end

end