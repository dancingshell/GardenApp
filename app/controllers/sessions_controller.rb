class SessionsController < ApplicationController
  def new
    @user = User.new
    @is_login = true
  end

  def create
    u = User.where(email: params[:user][:email]).first
    # first make sure we actually found the user
    # the make sure the password matches
    if u && u.authenticate(params[:user][:password])
      # throw a coockie at the user that holds the logged in user ID
      session[:user_id] = u.id.to_s
      redirect_to gardens_path
    else
      redirect_to new_session_path
    end
  end

  def destroy
    # Kill all of our cookies
    reset_session
    redirect_to users_path
  end
end
