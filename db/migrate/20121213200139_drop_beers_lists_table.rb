class DropBeersListsTable < ActiveRecord::Migration
  def up
  	drop_table :beer_lists
  end

  def down
  	raise ActiveRecord::IrreversibleMigration
  end
end
