require "spec_helper"
require "user"

describe User do
	before :each do
		@user = User.new
		@user.name = 'Angel'
		@user.surname = 'Fernández'
		@user.second_surname = 'Villarejo'
		@user.email = 'angelfervi@gmail.com'
		@user.password = 'alfatecsistemas'
	end

	it "should be valid with name, surname, second_name and email" do
		@user.should be_valid
	end

	it "should not be valid without a name" do
		@user.name = nil
		@user.should_not be_valid
	end

	it "should not be valid without a surname" do
		@user.surname = nil
		@user.should_not be_valid
	end

	it "should not be valid without a second surname" do
		@user.second_surname = nil
		@user.should_not be_valid
	end

	it "should not be valid without a email" do
		@user.email = nil
		@user.should_not be_valid
	end		

	it "should not be valid without a password" do
		@user.password= nil
		@user.should_not be_valid
	end	
end