class Sample < ActiveRecord::Base
  attr_accessible :desc, :iss_date, :priority, :samp_file_name, :samp_id, :tar_date, :status, :user_id, :awb_number, :courier_name, :date_sent
  has_attached_file :samp_file_name,
                    :url  => "/assets/upload/:id/:style/:basename.:extension",
                    :path => ":rails_root/app/assets/upload/:id/:style/:basename.:extension"
  validates_attachment_presence :samp_file_name
  has_many :usersampdescs
end
