class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :require_login 

  def current_user
  	return User.find(session[:user_id]) if session.key? 'user_id'



  end

  def require_login
  	return redirect_to new_session_path unless current_user


  end

  helper_method :current_user
end
