module BugsHelper
	def get_user(id)
		User.find(id).name
	end

end
