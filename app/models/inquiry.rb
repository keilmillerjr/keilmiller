class Inquiry
	include ActiveAttr::Model
	
	attribute :name
	attribute :email
	attribute :content
	
	attr_accessible :name, :email, :content
	
	validates :name, :presence => true
	validates :email, :presence => true, :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
	validates :content, :presence => true, :length => { :maximum => 500 }
end
