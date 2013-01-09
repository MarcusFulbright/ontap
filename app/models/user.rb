class User < ActiveRecord::Base
	has_many :user_beers
  has_many :beers, :through => :user_beers
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :beers, :beer_id
  # attr_accessible :title, :body

  def beers?
  	self.beers.length > 0
  end


end
