class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:gender, :fname, :lname, :u_type, :bday, :weight, :height, :ex_score, :diet_score, :diet_fitness_flag, :email, :password, :password_confirmation)}
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:gender, :fname, :lname, :u_type, :bday, :weight, :height, :ex_score, :diet_score, :diet_fitness_flag, :email, :password, :password_confirmation, :current_password)}
  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end