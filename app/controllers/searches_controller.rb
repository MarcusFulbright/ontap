class SearchesController < ApplicationController
require 'pintlabs_api'
  
  def index
  	@search = Search.new(query)  
    @beers = PintlabsAPI.search(params[:query])["data"]
  end
  
end
