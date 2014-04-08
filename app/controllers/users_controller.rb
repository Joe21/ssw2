class UsersController < ApplicationController
	before_filter :authenticate_user!

	include HTTParty

	def dashboard
		@my_log = current_user.entries
	end

	def new
		@user = current_user
		@entry = Entry.new(date: Time.now.strftime("%m/%d/%Y"))
	end



# Establish strong params for user model
	private

	def user_params
		params.require(:user).permit(:devise, :email, :password, :password_confirmation, :name, :counter, :entry_id)
	end

end