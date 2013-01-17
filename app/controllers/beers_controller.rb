class BeersController < ApplicationController
    
  def create
    @beer = Beer.create(params[:beer])
    
    flash[:notice] = "Your Beer has been added"
    redirect_to user_beers_path(@beer, current_user)
  end

  def index
     @beer_list = current_user.beers
  end

  def show
  end

end

