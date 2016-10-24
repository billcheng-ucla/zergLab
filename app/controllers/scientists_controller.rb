class ScientistsController < ApplicationController
	before_action :require_login, only: :show
	def index
		@scientists = Scientist.all
	end

	def new
		@scientist = Scientist.new
		p "Hello"
	end

	def create
		@scientist = Scientist.create(user_params)
		login(@scientist)
		redirect_to @scientist
	end

	def show
		@scientist = Scientist.find_by_id(params[:id])
	end

	private
	def user_params
		params.require(:scientist).permit(:email, :password, :username, :first_name, :last_name)
	end
end
