class DetectTwitterUser
  def initialize( star )
  	@star = star
  end

  def preset_if_verified
    if( verified_results && verified_results.size == 1 )
      @star.update_attributes(twitter: verified_results.first.username)
    end
  end

  def raw_results
    @raw ||= INTERFACE.user_search(@star.name)
  end

  def results
		if( verified_results.empty? )
      verified_results
    else
      raw_results
    end
  end

  def verified_results
    @verified ||= raw_results.select do |user|
  	  user.verified?
  	end
  end
end