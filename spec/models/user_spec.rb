require 'spec_helper'

describe User do
	let(:user) {FactoryGirl.create(:user)}

	

  it "creates a user" do
  	skip
  end
  it "update a user" do
  	skip
  end
  it "delete a user" do
  	skip
  end
  it "add ratings for songs" do
  	skip
  end
  it "add ratings for movies" do
  	skip
  end
  it "search for user" do
  	skip
  end



	it "Makes Factory" do
		expect(user.name).not_to eq("Checking")
		expect(user.email).to include('@', '.')  
	end

	it "Checks for valid Password" do
		expect(user.password.length).to be > 5
		expect(user.password).to match(/[a-z]/)
    expect(user.password).to match(/[A-Z]/)
    expect(user.password).to match(/\d/)
    expect(user.password).to match(/\W/)
	end
end