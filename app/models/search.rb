require "informal"
class Search < ActiveRecord::Base
	include Informal::Model
	attr_accessor :name

  	def query
  	end

end