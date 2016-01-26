class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    '/sleeplogs'
  end

  def after_update_path_for(resource)
    '/sleeplogs'
  end
end
