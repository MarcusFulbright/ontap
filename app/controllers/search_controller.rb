class SearchController < ApplicationController
require 'pintlabs_api'
  def create
    params[:search][:query] #=> this is your query string. pass it along to lib/whateverAPI
  end

end
