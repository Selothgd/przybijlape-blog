class ApplicationController < ActionController::Base
		helper_method :logged_in?
    helper_method :isadmin?


  def logged_in?
    current_user
  end

  def require_user
    if !logged_in?
      flash[:alert] = "You must be logged in to perform that action"
      redirect_to new_user_session_path
    end
  end

  def isadmin?
    if logged_in?
      current_user.isadmin?
    end    
  end

end
