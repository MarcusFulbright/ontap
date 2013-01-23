class AddDetailsToBeers < ActiveRecord::Migration
  def change
    add_column :beers, :abv, :decimal
    add_column :beers, :description, :string
    add_column :beers, :style, :string
  end
end
