require 'spec_helper'

describe Entry do
  before :each do
		@user = User.create(name: 'John Doe', zipcode: 10050, email: 'test@test.com')
		@entry1 = Entry.create(date: DateTime.strptime("04/07/2014", "%m/%d/%Y"), quantity: 10, hrs_slept: 5, temp: 53, user_id: 1)
		@entry2 = Entry.create(date: DateTime.strptime("04/08/2014", "%m/%d/%Y"), quantity: 12, hrs_slept: 4, temp: 55, user_id: 1)
	end

	describe "Entry#date" do

	end

	describe "Entry#quantity" do

	end

	describe "Entry#hrs_slept" do

	end

	describe "Entry#temp" do

	end

	describe "Entry#user_id" do

	end
end