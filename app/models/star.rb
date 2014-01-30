class Star < ActiveRecord::Base

	def twitter_user
		@twitter_user ||= INTERFACE.user( twitter ) unless twitter.blank?
	end
end
