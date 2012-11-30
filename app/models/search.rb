require "informal"
class Search < ActiveRecord::Base
	include Informal::Model
	attr_accessor :name

  	def initialize(beer=nil)
  		if beer
  			@name = []
  			beer["data"].length.times do |i|
  				@name[i] = beer["data"][i]["name"]
  				i += 1
  			end
  		end
  	end

  	def query
  	end

end
