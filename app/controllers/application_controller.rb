class ApplicationController < ActionController::Base
    
    before_action :configure_devise_parameters, if: :devise_controller?
    
    protected
    
    def configure_devise_parameters
      
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me, :avatar, :avatar_cache, :remove_avatar) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password, :avatar, :avatar_cache, :remove_avatar) }
    
    end 

=begin    
      around_action :set_time_zone

  def set_time_zone
    if user_logged_in?
      Time.use_zone(current_user.time_zone) { yield }
    else
      yield
    end
  end
=end  
end

