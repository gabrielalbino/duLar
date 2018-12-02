class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit(:admin, :email, :password, :password_confirmation,:first_name,:last_name,:avatar, :avatar_cache, :remove_avatar)
    end
    devise_parameter_sanitizer.permit(:account_update) do |user_params|
      user_params.permit(:admin, :email, :password, :password_confirmation,:current_password,:first_name,:last_name,:avatar, :avatar_cache, :remove_avatar)
    end
  end
end
