class BeersController < ApplicationController
require 'pintlabs_api'
  
  def index 
    @beers = PintlabsAPI.search(params[:query])["data"]
  end
  
end

