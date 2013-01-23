class Beer < ActiveRecord::Base
	attr_accessible :name, :user_id, :api_key, :abv, :description, :style
	has_many :user_beers
	has_many :users, :through => :user_beers

end
