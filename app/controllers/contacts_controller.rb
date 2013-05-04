class ContactsController < ApplicationController
	def index
		@contacts = Contact.all
	end

	def new
		@contact = Contact.new
  	end
  
 	def create
	    @contact = Contact.create(params[:contact])
		if @contact.save
			UserMailer.welcome_email(@contact).deliver
			redirect_to contacts_path, :notice => "Contact Created Successfull"
		else
			render "new"
		end
  	end

	def edit
		@contact = Contact.find(params[:id])
	end

	def update
		@contact = Contact.find(params[:id])
		if @contact.update_attributes(params[:contact])
			redirect_to contacts_path, :notice => "Updated Successfull"
		else
			render "edit"
		end
	end

	def destroy
		@contact = Contact.find(params[:id]).destroy
		redirect_to contacts_path, :notice => "Deleted Successfull"
	end

	def mail
		@contact = Contact.find(params[:id])
	end

	def contact_mail
		# @contact = Contact.find(params[:id])
		@contact = params[:contact]
		UserMailer.contact_email(@contact).deliver
		redirect_to contacts_path
	end
end