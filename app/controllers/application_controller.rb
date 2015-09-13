class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # Если это devise_controller? то будет выполнен before_filter :authenticate_user!,
  #(где у нас работает devise) и configure_permitted_parameters
  # Можно before_action(будет использоваться перед каждым action)
  before_filter :configure_permitted_parameters, if: :devise_controller?

  #protected
  private
  def configure_permitted_parameters
     devise_parameter_sanitizer.for(:sign_up) << :username
     #devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me) }
     #devise_parameter_sanitizer.for(:sign_in) << :username
     #devise_parameter_sanitizer.for(:account_update) << :username
  end 
end
