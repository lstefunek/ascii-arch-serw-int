class Order < ActiveRecord::Base
  belongs_to :user
  
  has_many :orderlists, :dependent => :destroy
	has_many :products, :through => :orderlists
end
