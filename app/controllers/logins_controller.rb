class LoginsController < ApplicationController
	def new
		# @login = Login.all
  end
  
  def create
    if user = Login.authenticate(params[:name], params[:password])
      session[:user_id] = user.id
      redirect_to dashboards_path, notice: "Logged in!"
    elsif user = User.authenticate(params[:name], params[:password])
      session[:user_id] = user.id
      redirect_to dashboards_path, notice: "Logged in!"
    else
      # flash.now.alert = "Email or password is invalid"
      redirect_to new_login_path, notice: "Email or password is invalid"
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to new_login_path, notice: "Logged out!"
  end
end
