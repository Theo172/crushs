class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path(resource)
  edit_profil_path(@user)
  end
end
