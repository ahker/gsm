class UsersController < ApplicationController
	def new
		@users = User.new
  	end
  
 	def create
	    @users = User.create(params[:user])
		if @users.save
			redirect_to new_user_path, :notice => "User Created Successfull"
		else
			render "new"
		end
  	end
end
