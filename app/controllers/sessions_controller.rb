class SessionsController < ApplicationController
  def new
  end

  def create
    user = login(params[:email], params[:password])
    if user
      redirect_back_or_to root_url, :notice => 'Logged in!'
    else
      flash[:failure] = 'Email or password was invalid.'
      render :new
    end
  end

  def destroy
	  logout
    flash[:info] = 'You have successfully logged out'
	  redirect_to root_url
	end
end
