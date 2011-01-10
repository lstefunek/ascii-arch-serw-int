class UsersController < ApplicationController
  
  def new
    @user = User.new
    respond_with(@user)
  end

  def create
    @user = User.new(params[:user])
    @user.save
    redirect_to root_url
  end
  
  def edit
  	@user = current_user
  end
  
  def update
  	@user = current_user
  	if @user.update_attributes(params[:user])
  		redirect_to root_url
  	else
  		render :action => 'edit'
  	end
  end

end
