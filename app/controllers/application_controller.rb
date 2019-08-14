class ApplicationController < ActionController::Base
	protect_from_forgery with: :null_session	
  before_action :authenticate_user!
  before_action :configure_permitted_parameter, if: :devise_controller?
  
  protected

  def configure_permitted_parameter
    devise_parameter_sanitizer.permit(:sign_up, keys: [:admin])	
  end	
end
	