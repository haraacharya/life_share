class ApplicationController < ActionController::Base
  protect_from_forgery


	def after_sign_in_path_for(resource_or_scope)
		if resource_or_scope.is_a?(User) && current_user.last_sign_in_at.nil?
			redirect_to :controller => :userdetails, :action => :new
		else
			super
		end
	end

end
