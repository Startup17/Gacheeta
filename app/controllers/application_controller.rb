class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

before_action :configure_permitted_parameters, if: :devise_controller? 
protected 

  def configure_permitted_parameters 
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :number, :degree])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :number, :degree]) 
  end




  
  protect_from_forgery with: :exception
  def require_login
    unless user_signed_in? #로그인이 안되어있으면 아래주소로 가
      redirect_to "/users/sign_in"
    end
  end
  

end
