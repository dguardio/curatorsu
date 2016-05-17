class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # Add my attributes added to the devise User class
    devise_parameter_sanitizer.for(:sign_up) << :first_name << :last_name << :role
    devise_parameter_sanitizer.for(:account_update) << :first_name << :last_name << :role << :image
  end
  
  rescue_from AccessGranted::AccessDenied do |exception|
    redirect_to root_path, alert: "You don't have permission to do that!"
  end



  
  private
  
  #-> Prelang (user_login:devise)
  def require_user_signed_in
    unless user_signed_in?

      # If the user came from a page, we can send them back.  Otherwise, send
      # them to the root path.
      if request.env['HTTP_REFERER']
        fallback_redirect = :back
      elsif defined?(root_path)
        fallback_redirect = root_path
      else
        fallback_redirect = "/"
      end

      redirect_to fallback_redirect, flash: {error: "You must be signed in to view this page."}
    end
  end

  

end