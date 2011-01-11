class UsersController < ApplicationController
  
  def new
    @user = User.new
    respond_with(@user)
  end

  def create
    @user = User.new(params[:user])
    @user.role = "client"
    @user.save
    redirect_to root_url
  end
  
  def edit
  	@user = current_user
  	@customer = Customer.find @user.customer
  end
  
  def update
  	@user = current_user
  	@user.update_attributes(params[:user])
  	@user.save
  	redirect_to root_url
  end

end
