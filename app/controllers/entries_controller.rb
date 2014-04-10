class EntriesController < ApplicationController
	before_filter :authenticate_user!

	include HTTParty

	def index
		@my_log = current_user.entries.sort! { |a, b| a.date <=> b.date }
	end

	def new
		# Obtain woeid for User's zipcode
		url = "http://where.yahooapis.com/v1/places.q('#{current_user.zipcode}')?appid=dj0yJmk9MlViRFMzYTViYUcwJmQ9WVdrOVZtZGhUVlpWTm04bWNHbzlNQS0tJnM9Y29uc3VtZXJzZWNyZXQmeD1mYg--"
		response = HTTParty.get(url)
		data = response.parsed_response
		woeid = data['places']['place']['postal']['woeid']

		# Obtain the temperature via woeid and Yahoo Weather API
		url = "http://weather.yahooapis.com/forecastrss?w=#{woeid}"
		response = HTTParty.get(url)
		data = response.parsed_response
		temp = data['rss']["channel"]['item']['condition']['temp']

		@entry = Entry.new(date: Time.now.strftime("%d/%m/%Y"), temp: temp)

		# Note: Bootstrap does not natively integrate the html used in the form_for helper.
		# Address this later via simple form gem or manual html forms. Leave for now.
	end

	def create
		@entry = Entry.create(entry_params)
		@entry.user_id = current_user.id
		@entry.save

		redirect_to root_path
	end

	def edit
		@entry = Entry.find(params[:id])
	end

	def update
		entry = Entry.find(params[:id])
		entry.update_attributes(entry_params)
		redirect_to root_path
	end

	def destroy
		entry = Entry.find(params[:id])
		entry.destroy
		redirect_to root_path
	end


# Establish strong params for user model
	private

	def entry_params
		params.require(:entry).permit(:date, :quantity, :hrs_slept, :temp, :user_id)
	end

end


