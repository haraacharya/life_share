class UserdetailsController < ApplicationController

	def new
		@userdetail = Userdetail.new
	end

	def create
		@userdetail = Userdetail.new(params[:userdetail])
		@userdetail.user = current_user
		if @userdetail.save
			redirect_to root_path, notice: "Updated successfully"
		else
			render "new"
		end
	end

	def edit
		@user = current_user
		@userdetail = @user.userdetail
	end

	def update
		@user = current_user
		@userdetail = @user.userdetail
		if @userdetail.update_attributes(params[:userdetail])
			redirect_to root_path, notice: "Updated successfully"
		else
			render "edit", error: "There might be some problem updating it now"
		end		
	end

	def show
		@userdetail = Userdetail.find(params[:id])
	end

end