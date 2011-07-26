class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by_email(params[:user][:email])
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect_to root_url, :notice => "Logged in!"
    else
      flash[:error] = "Invalid email or password"
      @user = User.new(:email => params[:user][:email]) # keep email in form to try again
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end
end
