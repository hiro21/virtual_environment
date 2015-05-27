class SessionsController < ApplicationController
	def create
		puts 'check start'
		auth = request.env["omniauth.auth"]
		session[:oauth_token] = auth.credentials.token
		session[:oauth_token_secret] = auth.credentials.secret
		session[:username] = auth.extra.access_token.params[:screen_name]
		puts 'check end'
		redirect_to controller: 'twitter_view', action: 'index'
	end

	def destroy
                session[:oauth_token] = nil
		session[:oauth_token_secret] = nil
		session[:username] = nil
		redirect_to controller: 'top', action: 'index'
	end
end
