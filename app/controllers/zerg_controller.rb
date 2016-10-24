class ZergController < ApplicationController
	def new
		@zerg = Zerg.new
	end
	def index
		@zerg = Zerg.where({specie: params[:specie], lab: findLab})
	end
	def create
		@zerg = Zerg.create(zergParams)
		@zerg.lab_id = params[:id]
		@zerg.save
		redirect_to '/labs/' + params[:id]
	end

	private

	def findLab
		lab = Lab.find_by_id(params[:id])
		return lab
	end

	def zergParams
		params.require(:zerg).permit(:identification, :specie, :strain, :image)
	end
end
