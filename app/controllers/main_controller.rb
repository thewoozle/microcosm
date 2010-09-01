class MainController < ApplicationController
	
	def index
		@title ="MICROCOSM"
		@messages = Message.all
		@topics = Topic.all
		
		
		respond_to do |format|
		  format.html # index.html.erb
		  format.xml  { render :xml => @topics }
		end
	end	
	
	
	def login 
		#	gets the userName and userPassword from the login Partial and validates them
		#	then changes the main view from using the login Partial to the loggedin Partial
		
		@user = User.new(params[:user])
		
		#validates the user against the database of users
		validUser = User.find_by_userName_and_userPassword(@user.userName, @user.userPassword)
		
		if validUser 
			#creates a session with username
			session[:id]=validUser.id 
			$userName = validUser.firstName + " " + validUser.lastName
			console validUser.id.to_s
			
			
			redirect_to :action=> 'index'
		else
			reset_session
			@validUser = nil
			flash[:notice] = "INVALID User/Password"
			redirect_to :action=> 'index'
		end			
	end
	
	
	
	
  
	
	
	def logout
		
			reset_session
			console ("logged out")
			
			@validUser = nil
			redirect_to :action=> 'index'
		
	end
	
	
	
  
  
  
  
  
  
		# the Console function accepts a string and prints it on the console output
		#	this is mainly for troubleshooting and testing
	def console (consoleMessage)
		puts "_____________________"
		puts "  -- " + consoleMessage + "\n "		
	end
	
	
end
