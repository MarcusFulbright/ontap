class AddApiIdToBeers < ActiveRecord::Migration
  def change
    add_column :beers, :api_key, :string
  end
end
