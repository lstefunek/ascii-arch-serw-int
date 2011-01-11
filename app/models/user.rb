class User < ActiveRecord::Base
	acts_as_authentic
	
	has_one :customer
	has_many :orders
	
	accepts_nested_attributes_for :customer
end
