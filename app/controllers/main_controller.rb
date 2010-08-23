class MainController < ApplicationController
	
	def process_login 
		@validUser = User.find(:first, :conditions =>["userName = ? AND userPassword = ?",
													params[:loginName], params[:loginPassword]])
		if @validUser
			#creates a session with username
			session[:user_id]=@validUser.userName
			flash[:notice] = "VALID User/Password"
			redirect_to :action=> 'index'
		else
			flash[:notice] = "Invalid User/Password"
			redirect_to :action=> 'index'
		end
		
	end
	
  
	
	
	def logout
		if session[:user_id]
			reset_session
			
		end	
	end
  
	def login
	end

	

	
	def index
	end
	
	
end
