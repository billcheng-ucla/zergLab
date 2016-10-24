class ZergController < ApplicationController
	def new
		@zerg = Zerg.new
	end
end
