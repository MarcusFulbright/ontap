class SearchesController < ApplicationController
require 'pintlabs_api'
  
	def index
  		if params[:search]
  			@search= Search.new
    		@results = BREWERY.search.beers(q: params[:search][:query])
    	else 
    		@search = Search.new
  		end
  	end
  
end
