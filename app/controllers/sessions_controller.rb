class SessionsController < ApplicationController
   def new
  end

  def create
    user_params = params.require(:user)
    user = User.confirm(user_params[:email], user_params[:password])
    if user
      login(user)
      redirect_to user_path(user.id)
    else
      flash[:error] = "Failed To Authenticate. Please try again."
      redirect_to "/login"
    end

  end
end
