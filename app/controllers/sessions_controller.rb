class SessionsController < ApplicationController
	def new 
	end

	def create

		auth = request.env["omniauth.auth"]
		user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
	    cookies.permanent[:remember_token] = user.remember_token
	    self.current_user = user
		redirect_to root_url, :notice => "Signed in!"


      # cookies[:remember_token] = { value: user.remember_token,
      #                              expires: 20.years.from_now }
    


		user = User.find_by_email(params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			sign_in user
			redirect_back_or user
		else
			flash.now[:error] = 'Invalid email/password combination' 
			redirect_to root_url
		end
	end

	def destroy
		sign_out
		redirect_to root_url
	end
end
