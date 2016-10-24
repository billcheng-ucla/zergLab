class SessionsController < ApplicationController
	def new
		@scientist = Scientist.new
	end

	def create
		user_params = params.require(:scientist).permit(:username, :password)
		@user = Scientist.confirm(user_params)
		if @user
			login(@user)
			flash[:notice] = "Successfully logged in."
			redirect_to @user
		else
			flash[:error] = "Incorrect email or password."
			redirect_to login_path
		end
	end

	def destroy
      logout # coming soon in SessionsHelper
      redirect_to root_path
    end
end
