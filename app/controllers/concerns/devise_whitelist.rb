module DeviseWhitelist
    extend ActiveSupport::Concern

    included do
        before_action :user_permit_params, if: :devise_controller?
    end

    def user_permit_params
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    end
end