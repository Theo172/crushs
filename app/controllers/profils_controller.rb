class ProfilsController < ApplicationController
  before_action :get_user

  def index
    @profils = Profil.all
  end

  def show
    @profil = Profil.find(params[:id])
  end

  def new
    @profil = Profil.new
    @user = User.find(params[:user_id])
  end

  def create
    raise
    @profil = Profil.new(profil_params)
    @profil.save
    redirect_to edit_profil_path(@profil)
  end

  def edit
    @profil = Profil.find(profil.(params[:id]))
  end

  def update
    @profil = Profil.find(profil.(params[:id]))
    @profil.update(profil_params)
    redirect_to profil_path(@profil)
  end

  def destroy
    @profil = Profil.find()
    @profil.destroy
    redirect_to profil_path, status: :see_other
  end

  private

  def profil_params
    params.require(:profil).permit(:name, :birth_date, :email, :password, :gender)
  end

  def user_params
    params.require(:user).permit(:email, :password)
  end

  def get_user
    @user = Profil.find(params[:user_id])
  end

end
