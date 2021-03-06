class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected

 def configure_permitted_parameters
    devise_parameter_sanitizer.permit(
      :sign_up, 
      keys: 
      [
        :name, 
        :last_name, 
        :nickname,
        :dni,
        :image,
        :email,
        :role,
        :web,
        :description, 
        :phone,
        :linkedin
        ]
      )
 end
end
