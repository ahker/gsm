class Login < ActiveRecord::Base
  attr_accessible :name, :password

    def Login.authenticate(name, password)
	  if user = find_by_name(name)
	    if user.password == password
	      user
	    end
	  end
	end
end
