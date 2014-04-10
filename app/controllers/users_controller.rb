class UsersController < ApplicationController
	before_filter :authenticate_user!

	def add_counter
	end

	def minus_counter
	end

# Establish strong params for user model
	private

	def user_params
		params.require(:user).permit(:devise, :email, :password, :password_confirmation, :name, :counter, :entry_id, :zipcode)
	end

end