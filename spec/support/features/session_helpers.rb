module Features
  module SessionHelpers

    def login_with(username, password)
      visit admin_login_path
      fill_in "Name", with: username
      fill_in "Password", with: password
      click_button 'Log in'
    end

    # Returns true if an admin user is logged in.
    def is_logged_in?
      !session[:user_id].nil?
    end

  end
end