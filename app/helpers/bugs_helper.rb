module BugsHelper
	def get_user(id)
		u = User.find(id)
		if u.name.present?
			return u.name
		else
			return "N/A"
		end
	end

end
