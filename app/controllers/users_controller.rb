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
  
  def show
  	@user = current_user
  	respond_with @user
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
  
  def execute 	
  	@user = current_user
  	
  	@sum = 0
  	
  	@user.orders.last.orderlists.each do |p|
  		@sum += Product.find(p.product_id).price
  	end
  	
  	respond_with @user, @sum
  end
  
  def orderexecute
  	@user = current_user
  	@order = @user.orders.last
  	
  	@order.buy = true
  	@user.orders << Order.new
  	
  	@order.save
  	@user.save
  	
  	redirect_to @user
  end

end
