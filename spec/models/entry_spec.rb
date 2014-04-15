require 'spec_helper'

describe Entry do
  before :each do
		@user = User.create(name: 'John Doe', zipcode: 10050, email: 'test@test.com', id: 1, counter: 0)
		@entry1 = Entry.create(date: DateTime.strptime("04/07/2014", "%m/%d/%Y"), quantity: 10, hrs_slept: 5, temp: 53, user_id: 1)
		@entry2 = Entry.create(date: DateTime.strptime("04/08/2014", "%m/%d/%Y"), quantity: 12, hrs_slept: 4, temp: 55, user_id: 1)
	end

	describe "Entry#date" do
		it "should return with the correct date" do
			@entry1.date.should eq(DateTime.strptime("04/07/2014", "%m/%d/%Y"))
			@entry2.date.should eq(DateTime.strptime("04/08/2014", "%m/%d/%Y"))
		end
	end

	describe "Entry#quantity" do
		it "should return with the correct quantity" do
			@entry1.quantity.should eq(10)
			@entry2.quantity.should eq(12)
		end
	end

	describe "Entry#hrs_slept" do
		it "should return with the correct hours slept" do
			@entry1.hrs_slept.should eq(5)
			@entry2.hrs_slept.should eq(4)
		end
	end

	describe "Entry#temp" do
		it "should return with the correct temperature" do
			@entry1.temp.should eq(53)
			@entry2.temp.should eq(55)
		end
	end
end