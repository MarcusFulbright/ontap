class BeersController < ApplicationController
    
  def create
    @beer = Beer.create(params[:beer])
    flash[:notice] = "Your Beer has been added"
    redirect_to user_beers_path(@beer, current_user)
  end

  def index
  	i = 0
  	@names = []
  	@beers = current_user.beers
  	@beers.length.times do |i|
  		@names[i] = @beers[i].name
  		i += 1
   	end
  end

  def show
  end

end

