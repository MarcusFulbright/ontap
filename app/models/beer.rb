class Beer < ActiveRecord::Base
	attr_accessible :name, :user_id, :api_key
	has_many :user_beers
	has_many :users, :through => :user_beers

def initialize(name, api_key)
	@name = name
	@api_key = api_key
end

end
