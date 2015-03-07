require 'rails_helper'

RSpec.describe Comment, type: :model do
  it "should have a valid factory" do
    FactoryGirl.create(:comment).should be_valid
  end

  describe "validations" do
    it "should be invalid without the body" do
      FactoryGirl.build(:comment, body: '').should_not be_valid
    end

    it "should allow anonymous comments" do
      FactoryGirl.build(:comment, name: '').should be_valid
    end
  end

  describe "#name" do
    context "Anonymous comments" do
      it "should return 'Anonymous' as the author" do
        anonymous_comment = FactoryGirl.create(:comment, name: '')
        anonymous_comment.author.should eql('Anonymous')
      end
    end

    context "Authored comments" do
      it "should return the name of the author" do
        authored_comment = FactoryGirl.create(:comment, name: "foobar")
        authored_comment.author.should eql("foobar")
      end
    end
  end
  
end
