require "informal"
class Search < ActiveRecord::Base
	include Informal::Model
	attr_accessor :name

  	def initialize(name=nil)
  		if name
  			@name = []
  			name["data"].length.times do |i|
  				@name[i] = name["data"][i]["name"]
  				i += 1
  			end
  		end
  	end

  	def query
  	end

  	def list_name
  	end

end
