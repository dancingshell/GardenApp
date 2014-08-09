class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user
  helper_method :current_gardens


  def current_user
    @current_user ||= User.where(:id => session[:user_id]).first
  end

  def current_gardens
    @current_gardens ||= Garden.where(:user_id => current_user[:id] )
  end
end
