class SessionsController < ApplicationController
  def new
  end

  def create
    admin = AdminUser.find_by(name: params[:session][:name])

    if admin && admin.authenticate(params[:session][:password])
      log_in admin
      flash[:success] = "<strong>Well done!</strong> Admin user '<strong>#{admin.name}</strong>'' has successfully logged in"
      redirect_to root_path
    else
      flash.now[:danger] = '<strong>Ups!</strong> - Invalid name/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    flash[:success] = "<strong>Log out!</strong> Admin user has successfully logged out."
    redirect_to root_url
  end
end
