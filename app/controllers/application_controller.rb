class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  Refile.secret_key = 'b3a334a72f0add691c01d458757b60c809eded0eb584d5c560766274929b5393fd5b6b52689ea9af28c8422612ad5295c03a86504bf49d80e4b93d07421ba30e'

  protected

  def after_sign_in_path_for(resource)
    user_path(resource)
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :introduction, :image])
  end
end
