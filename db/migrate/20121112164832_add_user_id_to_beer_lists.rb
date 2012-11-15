class AddUserIdToBeerLists < ActiveRecord::Migration
  def change
  	add_column :beer_lists, :userID, :integer
  end
end
