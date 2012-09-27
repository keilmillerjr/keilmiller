class ExamplesController < ApplicationController
  before_filter :require_login

  def new
    @example = Example.new
  end

  def create
    @example = Example.new(params[:example])

    if @example.save
      flash[:notice] = 'Example was successfully created.'
      redirect_to root_url
    else
      render action: 'new'
    end
  end

  def edit
    @example = Example.find(params[:id])
  end

  def update
    @example = Example.find(params[:id])

    if @example.update_attributes(params[:example])
      flash[:notice] = 'Example was successfully updated.'
      redirect_to root_url
    else
      render action: 'edit'
    end
  end

  def destroy
    @example = Example.find(params[:id])
    @example.destroy

    flash[:info] = 'Example was successfully destroyed.'
    redirect_to root_url
  end
end