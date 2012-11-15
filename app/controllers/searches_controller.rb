class SearchesController < ApplicationController
require 'pintlabs_api'
  
  def show
    render json: PintlabsAPI.search(params[:query])["data"]
  end

  def list
  	

  end
end
