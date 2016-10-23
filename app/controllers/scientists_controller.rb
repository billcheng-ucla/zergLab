class ScientistsController < ApplicationController
	def index
		@scientists = Scientist.all
	end

	def new
		@scientist = Scientist.new
	end
end
