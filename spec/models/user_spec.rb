require 'spec_helper'

describe User do
	before :each do
		@user = User.create(name: 'John Doe', zipcode: 10050, email: 'test@test.com')
		@entry1 = Entry.create(date: DateTime.strptime("04/07/2014", "%m/%d/%Y"), quantity: 10, hrs_slept: 5, temp: 53, user_id: 1)
		@entry2 = Entry.create(date: DateTime.strptime("04/08/2014", "%m/%d/%Y"), quantity: 12, hrs_slept: 4, temp: 55, user_id: 1)
	end

	describe "User#name" do
		it "should return the correct name" do
			@user.name.should eq('John Doe')
		end
	end

	describe "User#zipcode" do
		it "should return the correct zipcode" do
			@user.zipcode.should eq(10050)
		end
	end

	describe "User#email" do
		it "should return the correct email" do
			@user.email.should eq("test@test.com")
		end
	end
end