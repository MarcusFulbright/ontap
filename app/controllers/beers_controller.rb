class BeersController < ApplicationController
require 'pintlabs_api'
  
  def index
  	if params[:beer]
    	@beer = PintlabsAPI.search(params[:beer][:query])
  	end
  end
  
  def create
    @beer = Beer.create(params[:beer])
  end

end

