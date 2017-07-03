class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  	# call the configured devise_parameter_sanitizerbefore_action
   before_action :configure_permitted_parameters, if: :devise_controller?

  # protect the databse. while allowing these feilds to be updated
  protected
  def configure_permitted_parameters 
  devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me)}
  devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:login, :username, :password, :remember_me)}
  devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password)}
  end
end
