class UserSessionsController < ApplicationController
  def new
    @user_session = UserSession.new
    respond_with(@user_session)
  end

  def create
    @user_session = UserSession.new(params[:user_session])    
    @user_session.save
    
    @user = current_user
    
    if @user.orders.last != nil && @user.orders.last.buy == false
    	@user.orders.delete(@user.orders.last)
    end
    
    @user.orders << Order.new
    @user.save
    
    redirect_to root_url
  end

  def destroy
    @user_session = UserSession.find(params[:id])
    @user = current_user
    @order = @user.orders.last
    
    if @order != nil && @order.buy == false
    	@order.destroy
    	@user.save
    end
    	
    @user_session.destroy
    redirect_to root_url
  end
end
