class UsersController < ApplicationController
  before_filter :single_user, :only => [:new, :create]

  def new
  	@user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      auto_login(@user)
      flash[:notice] = 'You have successfully signed up!'
      redirect_to root_url
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(params[:user])
      flash[:notice] = 'User was successfully updated.'
      redirect_to root_url
    else
      render action: 'edit'
    end
  end

  private

  # Single user mode
  def single_user
    if User.count == 1
      flash[:failure] = 'You can not create another user.'
      redirect_to root_url
    end
  end
end