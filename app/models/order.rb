class Order < ActiveRecord::Base
  belongs_to :user
  
  has_many :orderlists, :dependent => :destroy
	has_many :products, :through => :orderlists
	
	def price
		@sum = 0
		@products.each do |p|
			@sum += p.price
		end
		
		return @sum
	end
end
