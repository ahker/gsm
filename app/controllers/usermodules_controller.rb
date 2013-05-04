class UsermodulesController < ApplicationController
	def new
		@usermodule = Usermodule.new
  	end
  
 	def create
	    @usermodule = Usermodule.create(params[:usermodule])
		if @usermodule.save
			redirect_to new_usermodule_path, :notice => "Module Created Successfull"
		else
			render "new"
		end
  	end
end
