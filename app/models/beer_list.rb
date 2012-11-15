class BeerList < ActiveRecord::Base
  belongs_to :user
  has_many :beer
end
