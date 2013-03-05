class VotesController < ApplicationController

	before_filter :authenticate_user!, only: [:create]

	def create
		if Vote.where(date_idea_id: params[:date_idea_id], user_id: current_user.id, direction: params[:direction]).last == nil 
			@dateidea = DateIdea.where(:id => params[:date_idea_id]).first
			@vote = @dateidea.votes.new(direction: params[:direction])
			@vote.user = current_user
			if @vote.save
				redirect_to root_path, notice: "Voted successfully!"
			end
		else
			redirect_to root_path, notice: "Duplicate vote found!"
		end	
	end

end
