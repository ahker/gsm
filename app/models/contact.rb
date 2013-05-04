class Contact < ActiveRecord::Base
  attr_accessible :address1, :address2, :address3, :address4, :address5, :archived, :buyer, :companyname, :country, :email, :fax, :notes, :phone, :postcode, :region, :salutation, :status, :updated_by
end
