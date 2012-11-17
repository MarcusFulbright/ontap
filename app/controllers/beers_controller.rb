class BeersController < ApplicationController
require 'pintlabs_api'
  
  def index
  	@search = Search.new 
    @beers = PintlabsAPI.search(params[:query])["data"]
  end
  
end

