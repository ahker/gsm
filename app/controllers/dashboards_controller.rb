class DashboardsController < ApplicationController
	def index
		@samples = Sample.all
	end

	def download
	    @datafile = Sample.find(params[:id])
	    send_file @datafile.samp_file_name.path
    end
end
