class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname])
        devise_parameter_sanitizer.permit(:sign_up, keys: [:lastname])
        devise_parameter_sanitizer.permit(:account_update, keys: [:firstname])
        devise_parameter_sanitizer.permit(:account_update, keys: [:lastname])
    end
end
