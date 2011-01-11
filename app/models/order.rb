class Order < ActiveRecord::Base
  belongs_to :customer
  
  has_many :orderlists, :dependent => :destroy
	has_many :products, :through => :orderlists
end
