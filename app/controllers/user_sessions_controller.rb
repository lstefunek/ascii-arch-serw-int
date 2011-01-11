class UserSessionsController < ApplicationController
  def new
    @user_session = UserSession.new
    respond_with(@user_session)
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    @user_session.save
    redirect_to root_url
  end

  def destroy
    @user_session = UserSession.find(params[:id])
    @user = current_user
    @user_session.destroy
    redirect_to root_url
  end
end
