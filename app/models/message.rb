class Message < ActiveRecord::Base
	belongs_to :topic
	validates_presence_of :messageBody
	

end
