module SessionsHelper

  def login(user)
    session[:scientist_id] = user.id
    @current_user = user
  end

  def current_user
    @current_user ||= Scientist.find_by_id(session[:scientist_id])
  end

  def logout
  	@current_user = session[:scientist_id] = nil
  end

end