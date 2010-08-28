class User < ActiveRecord::Base
	validates_presence_of :userName
	validates_presence_of :userPassword
	def self.authenticate(userName, userPassword)
    
  end  
  
  
	
	
end
