class CommentsController < ApplicationController

	before_filter :authenticate_user!, only: [:create]

	def new
		@comment = Comment.new
	end

	def create
		@dateidea = DateIdea.find(params[:date_idea_id])
		@comment = @dateidea.comments.new(params[:comment])
		@comment.user = current_user
		
		if @comment.save
			redirect_to date_idea_path(@dateidea), notice: "Replied successfully"
		else
			render "new"
		end
	end

	def show
		
	end	

end