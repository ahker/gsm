class SamplesController < ApplicationController
	def new
		@sample = Sample.new
		@sampid = Sample.last.samp_id.to_i+1.to_i
  	end
  
 	def create
	    @sample = Sample.create(params[:sample])
		if @sample.save
			redirect_to dashboards_path, :notice => "Added Successfull"
		else
			render "new"
		end
  	end

	def show
		@sample = Sample.find(params[:id])
		@usersampdesc = @sample.usersampdescs.build
		@usersampdescall = Usersampdesc.where(:sample_id => params[:id])
	end

	def create_userdesc
		# @order = @customer.orders.create(:order_date => Time.now)
		@sample = Sample.find(params[:id])
	    @usersampdesc = @sample.usersampdescs.build(params[:usersampdesc])
		if @usersampdesc.save
			redirect_to @sample, :notice => "Added Successfull"
		else
			render "new"
		end
  	end

  	def download
	    @datafile = Usersampdesc.find(params[:id])
	    send_file @datafile.samp_file_name.path
    end

    def update_sample
    	@sample = Sample.find(params[:id])
		if ((@sample.status == 0) && User.find(session[:user_id]).id)
			@sample.update_attributes(:status => 1, :user_id => User.find(session[:user_id]).id)
			redirect_to @sample
		elsif (@sample.status == 1)
			@sample.update_attributes(:status => 2)
			redirect_to @sample
		elsif (@sample.status == 2)
			@sample.update_attributes(params[:sample])
			redirect_to dashboards_path
		end
    end

end