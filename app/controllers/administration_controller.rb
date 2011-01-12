class AdministrationController < ApplicationController

	def products
		@products = Product.all
		respond_with @products
	end
	
	def categories
		@categories = Category.all
		respond_with @categories
	end
	
	def users
		@users = User.all
		respond_with @users
	end
	
	def orders
		@orders = Order.all
		respond_with @orders
	end
	
end
