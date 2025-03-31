class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :authenticate_user!
    def authenticate_admin!
      redirect_to root_path, alert: "Not authorized!" unless current_user&.admin?
    end
    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :role])
      devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :role])
    end
  end
  

