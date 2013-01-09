class Beer < ActiveRecord::Base
	attr_accessible :name, :user_id
	has_many :beer_lists
	has_many :users, :through => :user_beers

end
