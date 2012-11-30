require 'spec_helper'

describe Beer do
  it "should have a name" do 
  	hash = {name: "bud light"}
  	beer = Beer.new(hash)
  	beer.name.should == "bud light"
  end
  it "should have a user" do
  	@user = Fabricate(:user, email: "me@exmaple.com", password: "password", password_confirmation: "password")
  	hash = {user: @user}
  	beer = Beer.new(hash)
  	beer.user.should == @user
  end
  it "should be retreiveable" do
  	@beer = Fabricate(:beer, name: "bud light")
  	Beer.find_by_name("bud light").should == @beer
  end

end
