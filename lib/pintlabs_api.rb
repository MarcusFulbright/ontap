require "json"
class PintlabsAPI
  include HTTParty

  def self.search(query)
    self.get(URI.escape("http://api.brewerydb.com/v2/search?key=179b4ca157d29bca1a09a4e7e013f5f2&q=#{query}"))
  end
end