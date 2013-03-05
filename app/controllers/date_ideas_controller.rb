class DateIdeasController < ApplicationController

	before_filter :authenticate_user!, only: [:create]

	def new
		@dateidea = DateIdea.new
	end

	def create
		@user = current_user
		@dateidea = DateIdea.new(params[:date_idea])
		@dateidea.user = current_user
		
		if @dateidea.save
			redirect_to root_path, notice: "Expressed your date-idea successfully"
		else
			render "new"
		end
	end

	def show
		@dateidea = DateIdea.find(params[:id])
		@userdetail = @dateidea.user.userdetail

		@comment = Comment.new
		#@comments = @dateidea.comments.where(:user_id => current_user)
		@comments = @dateidea.comments.order('created_at DESC')
	end	

end