class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :check_confirmation

  protected

  def check_confirmation
    if user_signed_in? && !current_user.confirmed?
      redirect_to new_user_confirmation_path, alert: "Please confirm your email address to continue."
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end
  
  def require_admin_access
    unless current_user && (current_user.admin? || current_user.super_admin?)
      redirect_to root_path, alert: "You are not authorized to access this page."
    end
  end
end
