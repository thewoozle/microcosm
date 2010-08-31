class Topic < ActiveRecord::Base
	has_many :messages
	validates_presence_of :topicName
	
end
