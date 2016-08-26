module AuthorizedusersHelper

  # Logs in the given user.
  def log_in(user)
    session[:companyname] = user.companyname
  end

  # Returns the current logged-in user (if any).
  def current_user
    @current_user ||= Authorizeduser.find_by(companyname: session[:companyname])
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end

end
