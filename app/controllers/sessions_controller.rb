class SessionsController < ApplicationController
  skip_before_filter :login_required, :only => [:new, :create]
  
  def new
  end

  def create
    user = User.where(:email => params[:email]).first
    if user && user.authenticate(params[:password])
      login(user)
      redirect_to user_path(user)
    else
      flash[:notice] = "Could not authenticate for #{params[:email]}"
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to login_path
  end
end