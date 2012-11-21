class BeersController < ApplicationController
require 'pintlabs_api'
  
  def index
  	if params[:beer]
    	@beer = PintlabsAPI.search(params[:beer][:query])
  	end
  end


end

