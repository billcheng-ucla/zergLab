class Scientist < ApplicationRecord
	has_secure_password
	validates :username, uniqueness: true, presence: true
	belongs_to :lab, optional: true
	def self.confirm(params)
		@user = Scientist.find_by({username: params[:username]})
		@user ? @user.authenticate(params[:password]) : false
	end
end
