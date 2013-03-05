class StaticPagesController < ApplicationController
	
	def home
		if user_signed_in?
			if current_user.userdetail.nil? 
			   @userdetail = Userdetail.new
	           redirect_to new_userdetail_path
	        else
	        	@dateidea = DateIdea.new
				@dateideas = DateIdea.order('created_at DESC').all
			end
		else
			@dateidea = DateIdea.new
			@dateideas = DateIdea.order('created_at DESC').all
		end	
	end

end