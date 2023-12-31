class ApplicationController < ActionController::Base
  before_action  :authenticate_user!
  before_action  :configure_permitted_parameters, if: :devise_controller?

  def after_sign_up_path_for
    robots_path
  end

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end
end
