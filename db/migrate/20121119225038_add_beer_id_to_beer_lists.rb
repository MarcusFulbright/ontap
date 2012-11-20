class AddBeerIdToBeerLists < ActiveRecord::Migration
  def change
  	add_column :beer_lists, :beerID, :integer
  end
end
