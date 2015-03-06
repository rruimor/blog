module PostsHelper
  def not_logged_message
    "<strong>You're not logged in</strong> - Click <a href='#{admin_login_path}'>here</a> to log in"
  end
end
