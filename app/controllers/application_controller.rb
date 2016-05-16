class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  def current_user
    @user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def logged_in?
    current_user && session[:user_id]
  end

  def required_logged_in
    redirect_to '/' unless logged_in?
  end

end
