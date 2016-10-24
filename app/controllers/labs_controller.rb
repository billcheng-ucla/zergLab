class LabsController < ApplicationController
	def index
		@labs = Lab.all
	end
	def show
		@lab = Lab.find_by_id(params[:id])
	end
end
