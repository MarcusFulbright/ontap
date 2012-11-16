class BeersController < ApplicationController
	respond_to :html
	def create 
		@beer = Beer.new(params[:beer])
		flash[:notice] = "Your Beer Has Been Added"
		
		respond_with do |format|
			format .html { render }
		end
	end

end
