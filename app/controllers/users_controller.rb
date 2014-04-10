class UsersController < ApplicationController
	before_filter :authenticate_user!

	def add_counter
		current_user.increment(:counter) 
		current_user.save
		redirect_to root_path
	end

	def minus_counter
		if current_user.counter > 0
			current_user.decrement(:counter) 
			current_user.save
		end
		redirect_to root_path
	end

	def reset_counter
		current_user.update_attribute :counter, 0
		current_user.save
		redirect_to root_path
	end

# Establish strong params for user model
	private

	def user_params
		params.require(:user).permit(:devise, :email, :password, :password_confirmation, :name, :counter, :entry_id, :zipcode)
	end

end