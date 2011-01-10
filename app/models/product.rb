class Product < ActiveRecord::Base
	has_attached_file :photo 
	
	validates_length_of :name, :minimum => 10
	validates_length_of :body, :minimum => 20
	validates_numericality_of :price, :greater_than => 0
	validates_numericality_of :count, :greater_than_or_equal_to => 0
end
