class User < ActiveRecord::Base
	acts_as_authentic
	
	has_one :customer
	
	accepts_nested_attributes_for :customer
end
