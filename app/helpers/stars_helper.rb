module StarsHelper
	def twitter_options
		DetectTwitterUser.new(@star).results
	end
end
