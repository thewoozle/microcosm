class Message < ActiveRecord::Base

	validates_presence_of :messageTopic
	validates_presence_of :messageBody
	

end
