require 'rails_helper'

RSpec.describe Post, type: :model do
  it "has a valid factory" do
  	FactoryGirl.create(:post).should be_valid
  end
  
  describe "validations" do
	  it "is invalid without a title" do
	  	FactoryGirl.build(:post, title: nil).should_not be_valid
	  end
	    
	  it "is invalid with a less than 5 chararacters title" do
	  	FactoryGirl.build(:post, title: "Four").should_not be_valid
	  end
	  
	  it "is invalid without a body" do
	  	FactoryGirl.build(:post, body: nil).should_not be_valid
	  end
  end
end
