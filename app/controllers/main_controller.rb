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
	
	
	def closeTopic
		side=params[:side]
		if $side == 'left'
			puts @side
			$leftTopicId = nil
		elsif $side == 'right'
			$rightTopicId = nil	
		end
		redirect_to :action=>'index'
	end
	
	
	def pickTopic
		$topicId = params[:transferTopic]	
		if !$leftTopicId && $rightTopicId != $topicId
			$leftTopicId = $topicId
		elsif !$rightTopicId && $leftTopicId != $topicId	
			$rightTopicId = $topicId
		else 	
			flash[:notice] = "please close a topic"
		end	
		redirect_to :action=>'index'
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
		else
			reset_session
			@validUser = nil
			flash[:notice] = "INVALID User/Password"
		end			
		redirect_to :action=> 'index'
		$topicId = nil
		$leftTopicId = nil
		$rightTopicId = nil
	end
	
		
	def logout
		
			reset_session
			console ("logged out")
			
			@validUser = nil
			redirect_to :action=> 'index'
		
	end
	
	
end
