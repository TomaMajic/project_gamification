class UsersController < ApplicationController

	layout 'game';
	before_action :authenticate_user!

	def index 
		@user = current_user
	end

end

