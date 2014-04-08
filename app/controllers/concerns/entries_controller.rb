class EntriesController < ApplicationController
# Establish strong params for user model
	private

	def entry_params
		params.require(:entry).permit(:date, :quantity, :hrs_slept, :temp)
	end

end