class UsersController < ApplicationController

	layout 'game'
	before_action :authenticate_user!

	def index 
		@user = current_user
	end

	def sign_out 
		redirect_to(new_user_session_path)
	end
	
	def learning
		
	end	

	#private

  	# Overwriting the sign_out redirect path method
	#def after_sign_out_path_for(resource_or_scope)
    #	root_path
  	#end
end

