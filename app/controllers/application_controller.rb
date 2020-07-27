class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:
    	[:surname, :first_name, :surname_kana, :first_name_kana, :postal_code, :address, :phone_number])
  end
end
