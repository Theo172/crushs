class ApplicationController < ActionController::Base
  # before_action :authenticate_user!

  def after_sign_in_path_for
    new_user_profil_path # your path
    # new_user_profil_path(@user.id) # your path
  end

  private

  def profil_params
    params.require(:user).permit(:id, :email, :password)
  end
end
