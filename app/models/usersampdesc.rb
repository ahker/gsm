class Usersampdesc < ActiveRecord::Base
  belongs_to :sample
  attr_accessible :desc, :samp_file_name, :user_id
  has_attached_file :samp_file_name,
                    :url  => "/assets/userdescupload/:id/:style/:basename.:extension",
                    :path => ":rails_root/app/assets/userdescupload/:id/:style/:basename.:extension"
end
