class User < ActiveRecord::Base
	validates_presence_of :userName
	validates_presence_of :userPassword
	validates_presence_of :topic_name
	validates_presence_of :message_topic
	validates_presence_of :message_creator
	validates_presence_of :message_body
end
