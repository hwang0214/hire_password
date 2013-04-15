class ApplicationController < ActionController::Base
  protect_from_forgery

private
  
  def current_user
    # @current_user ||= User.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def gmail_user
    @gmail_user ||= Student.find(session[:student_id]) if session[:student_id]
  end
  helper_method :gmail_user

  def authorize
    redirect_to login_url, alert: "Not authorized" if current_user.nil?
  end
end
