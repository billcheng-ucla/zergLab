class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  def require_login
    unless current_user
      #send an http response to stop program execution
      redirect_to root_path
    end
  end
  # def require_authorization
  # 	if current_user

  # 	else
  # 		redi
  # end
end
