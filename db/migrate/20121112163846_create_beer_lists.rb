class CreateBeerLists < ActiveRecord::Migration
  def change
    create_table :beer_lists do |t|

      t.timestamps
    end
  end
end
