class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :current_user_name, :current_user_id

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

  # use if we need to have some content that's only available for
  # users who are logged in
  def logged_in?
    !!current_user
  end

  def current_user_id
    current_user ? current_user.id : nil
  end

  def current_user_name
    current_user ? current_user.username : nil
  end

  def require_current_user!
    redirect_to user_url unless current_user
  end

  def require_no_current_user!
    redirect_to current_user if current_user
  end

end
