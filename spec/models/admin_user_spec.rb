require 'rails_helper'

RSpec.describe AdminUser, type: :model do
  it "has a valid factory" do
    FactoryGirl.create(:admin_user).should be_valid
  end

  describe "validations" do
    it "should be invalid without a name" do
      FactoryGirl.build(:admin_user, name: nil).should_not be_valid
    end

    it "should have a password longer than 6 chars" do
      FactoryGirl.build(:admin_user, password: '12345', password_confirmation: '12345').should_not be_valid
    end
  end
  
end
