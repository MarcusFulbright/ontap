class AddBeersToUser < ActiveRecord::Migration
  def change
    add_column :users, :beer_id, :integer
  end
end
