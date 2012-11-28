class BeersController < ApplicationController
    
  def create
    @beer = Beer.create(params[:beer])
    flash[:notice] = "Your Beer has been added"
  end

end

