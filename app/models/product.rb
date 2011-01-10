class Product < ActiveRecord::Base
	has_attached_file :photo, :styles => { :small => "150x150>" }, :url => "/assets/products/:id/:style/:basename.:extension", :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension" 
	
	validates_length_of :name, :minimum => 10
	validates_length_of :body, :minimum => 20
	
	validates_numericality_of :price, :greater_than => 0
	validates_numericality_of :count, :greater_than_or_equal_to => 0
	
	validates_attachment_presence :photo  
  validates_attachment_size :photo, :less_than => 5.megabytes  
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']  
end
