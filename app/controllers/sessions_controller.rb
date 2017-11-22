class SessionsController < ApplicationController
  def new
  end

  def create
  	@user = User.find_by(email: params[:email])
  	if @user && @user.authenticate(params[:password])
  		session[:user_id] = @user.id
  		redirect_to root_url, notice: 'Logged In'
  	else
  		flash.now.alert = 'Email or password is invalid'
  		render :new
  	end
  end

  def destroy
  	User.find(session[:user_id]).destroy
  	session[:user_id] = nil
  	redirect_to root_url
  end
end