class SessionsController < ApplicationController
  def new
  end

  def create
    admin = AdminUser.find_by(name: params[:session][:name])

    if admin && admin.authenticate(params[:session][:password])
      # Log in the user and redirect to Admin page
    else
      flash.now[:danger] = 'Invalid name/password combination'
      render 'new'
    end
  end

  def destroy
  end
end
