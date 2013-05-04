class UserMailer < ActionMailer::Base
  	default from: "vinoth872006@gmail.com"

	def welcome_email(contact)
	@contact = contact
	@url = "http://google.com"

	encode_contant = File.read(Rails.root.join('app/assets/images/rails.png'))
	attachments["rails.png"] = {:mime_type => 'application/x-gzip', :content => encode_contant}

	# attachments["rails.png"] = File.read(Rails.root.join('app/assets/images/rails.png'))
	mail(:to => contact.email,
	:subject => "Welcome to My Site")
	end 

	def contact_email(contact)
	@contact = contact
	@buyer = @contact[:buyer]
	@url = @contact[:msg]
	mail(:to => @contact[:email],
	:subject => @contact[:sub])
	end
end
