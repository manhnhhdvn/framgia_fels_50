class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by email: params[:session][:email].downcase
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_back_or user
    else
      flash.now[:danger] = t "controllers.sessions.create.flash_danger"
      render :new
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to login_path
  end
end