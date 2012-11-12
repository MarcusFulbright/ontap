class SearchesController < ApplicationController
require 'pintlabs_api'
  def create
    params[:search][:query] #=> this is your query string. pass it along to lib/whateverAPI
    p PintlabsAPI.search(params[:search][:query])
    redirect_to root_url
  end

end
