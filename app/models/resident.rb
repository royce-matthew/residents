class Resident < ActiveRecord::Base
	def photo
		if (self.photo_link == nil) |(self.photo_link == "")
			false
		else
			true
		end
	end 
end
