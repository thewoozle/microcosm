class MainController < ApplicationController
	def process_login
		#user.new(params[:userform[) will create a new object of User, retrieve values from the form 
		#and store it variable @user.
		@user = User.new(params[:userform])
		valid_user = User.find(:first, :conditions => ["userName = ? and userPassword = ?", @user.userName, @user.userPassword])
		
		if valid_user
			session[:user_id]=valid_user.userName
			redirect_to :action => 'show_topics'
		else
			flash[:notice] = "Invalid User/Password"
			#redirect_to :action=>'login'
		end	
	end
  
	def logout
		if session[:user_id]
			reset_session
			#redirect_to :action=>'login'
		end	
	end
  
	def login
	end

	def private
	end

	
	def index
	end
	
	def private
		if !session[:user_id]
			#redirect_to :action=> 'login'	
		end
	end
end
