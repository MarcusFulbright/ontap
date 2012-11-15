class Beer < ActiveRecord::Base
  attr_accesible :name
  belongs_to :BeerList
end
