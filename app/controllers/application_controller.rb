class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    stored_location_for(resource) || user_dashboard_index_path(current_user)
    # method checks if there's a stored location (perhaps the user was trying to access a specific page before signing in). 
    # If there's no stored location, it redirects to the dashboard_path.
  end
end
