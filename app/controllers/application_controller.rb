# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
	helper :all # include all helpers, all the time
	protect_from_forgery # See ActionController::RequestForgeryProtection for details
	
	# The @title variable passes MICROCOSM to the index page where it becomes the h1 text 
	def main
		@title ="MICROCOSM"
	end	

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
