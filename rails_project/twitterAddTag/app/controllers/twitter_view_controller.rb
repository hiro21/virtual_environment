class TwitterViewController < ApplicationController
  def index
	 tmpVals = params[:accountName] 
         #@accountName = tmpVals['accountName']
	 @accountName = session[:username]
	 getTwitter(@accountName)
	 puts @accountName
  end

  private

  def getTwitter(user)
	  option = {"count" => 10}
	  puts user
	  #puts twitter_client.user(user)
	  timelines = twitter_client.user_timeline(user, option)
	  @timelines = Array.new
	  timelines.each do |line|
		  puts line.text
		  @timelines.push(line.text)
	  end
	  #Twitter.user_timeline(user, option).each do |res|
#	  twitter_client.user_timeline(user, option).each do |res|
#		  puts #{res.text}
#	  end
  end

  def twitter_client
	  client = Twitter::REST::Client.new do |config|
		  #:oauth_token => session[:oauth_token],
		  #:oauth_token_secret => session[:oauth_token_secret]
		  config.consumer_key = "yy17LtGmrMGWiXDOtA0FrlHO5"
		  config.consumer_secret = "M39T8VyBFFnT5uVOpKRensidjvE7SY8DJfKH60Uf7OQLpumiDu"
		  config.access_token = session[:oauth_token]
		  config.access_token_secret = session[:oauth_token_secret]
	  
  	  end
  end
end
