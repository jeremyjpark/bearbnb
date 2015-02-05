class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?

  private

  def current_user
    @current_user ||= User.find_by(session_token: session[:session_token])
  end

  def login!(user)
    @current_user = user
    session[:session_token] = user.reset_session_token!
  end

  def log_out!
    current_user.try(:reset_token!)
    session[:token] = nil
  end

  def logged_in?
    !!current_user
  end

  def require_current_user!
    redirect_to new_session_url unless logged_in?
  end

  def require_no_current_user!
    redirect_to root_url if current_user
  end

end
