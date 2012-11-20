class BeersController < ApplicationController
require 'pintlabs_api'
require 'json'

  
  def index 
    @beer = JSON.parse PintlabsAPI.search(params[:beer]).response.body
  end
  
end

