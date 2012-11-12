class Search < ActiveRecord::Base
	include Informal::Model
  	attr_accessor :query
end
