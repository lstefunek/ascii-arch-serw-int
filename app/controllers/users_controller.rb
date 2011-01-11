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
  
	def add
	
		@user = current_user
		
		if @user.orders.last != nil
  		@order = @user.orders.last
  	else
  		@order = Order.new
  	end
  		  	
  	@orderlist = Orderlist.new
  	@orderlist.order_id = @order.id
  	@orderlist.product_id = params[:product_id]
  	@order.orderlists << @orderlist
  	@user.orders << @order
  	
  	@order.save
  	@user.save
  	
  	redirect_to root_url
  end
  
	def removeproduct
		debugger
  
  	@productId = params[:product_id]
  
  	@user = current_user
  	@order = @user.orders.last
  	@orderlists = @order.orderlists
  	
  	@delete = []
  	@delete << @orderlists.select { |p| p.product_id == @productId.to_i }
  	
  	@orderlists.delete @delete.first
  	
  	@order.save
  	@user.save
  	
  	redirect_to @user
  	
  end

end
