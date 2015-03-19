require 'spec_helper'

RSpec.feature "Admin login", :type => :feature do

  feature 'Admin login' do
    scenario 'with valid username and password' do
      admin_user = FactoryGirl.create(:admin_user)
      login_with admin_user.name, admin_user.password

      expect(page).to have_content('Log out')
    end

    scenario 'with blank username' do
      login_with '', "foobar"

      expect(page).to have_content('Invalid name/password')
    end 

  end

end
