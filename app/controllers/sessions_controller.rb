class SessionsController < ApplicationController
	def new
	end

#For Devise
	def create
	  user = User.authenticate(params[:email], params[:password])
	  if user
	    session[:user_id] = user.id
	    redirect_to root_url, :notice => "Logged in!"
	  else
	    flash.now.alert = "Invalid email or password"
	    render "new"
	  end
	end

#For Facebook login
	# def create
	#     user = User.from_omniauth(env["omniauth.auth"])
	#     session[:user_id] = user.id
	#     redirect_to root_url
 #  	end

	# def destroy
	#   session[:user_id] = nil
	#   redirect_to root_url, :notice => "Logged out!"
	# end
end
