module SessionsHelper
  # Logs in the Admin user.
  def log_in(admin_user)
    session[:user_id] = admin_user.id
  end

  def log_out
    session.delete(:user_id)
    @current_admin = nil    
  end

  def current_admin
    @current_admin ||= AdminUser.find_by(id: session[:user_id])    
  end

  def logged_in?
    !current_admin.nil?
  end

end
