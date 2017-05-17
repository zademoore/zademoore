class SessionsController < ApplicationController


	# def new

	# end

	def create
		auth_hash = request.env['omniauth.auth']

		render :text => auth_hash.inspect
		begin
			@user = User.from_omniauth(request.env['omniauth.auth'])
			session[:user_id] = @user.id
			flash[:success] = "Welcome, #{@user.name}!"
		rescue
			flash[:warning] = "Could not authenticate"
		end
		redirect_to root_path
	end

	# def destroy
	# 	if current_user
	# 		session.delete(:user_id)
	# 		flash[:success] = 'Come back soon!'
	# 	end
	# 	redirect_to root_path
	# end

	# def auth_failure
	# 	redirect_to root_path
	# end


#### old


	# def new
	# end

	# def create
	# 	auth_hash = request.env['omniauth.auth']

	# 	if session[:user_id]
	# 		User.find(session[:user_id]).add_provider(auth_hash)
	# 		redirect_to root_path
	# 		flash[:success] = 'Welcome back'
	# 	else
	# 		# Log in or sign up
	# 		auth = Authorization.find_or_create(auth_hash)
	# 		# Create session
	# 		session[:user_id] = auth.user.id
	# 		redirect_to root_path
	# 		flash[:success] = 'Welcome!'

	# 	end
	# end

	# def failure
	# 	redirect_to :login
	# end

	# def destroy
	# 	session[:user_id] = nil
	# 	redirect_to root_path
	# end



end
