class ProfilsController < ApplicationController

  def index
    @profils = Profil.all
  end

  def show
    @profil = Profil.find(params[:id])
  end

  def new
    @profil = Profil.new
  end

  def create
    @profil = Profil.new(profil_params)
    @profil.save
    redirect_to edit_profil_path(@profil)
  end

  def edit
    @profil = Profil.find(params[:id])
  end

  def update
    @profil = Profil.find(params[:id])
    @profil.update(profil_params)
    redirect_to profil_path(@profil)
  end

  def destroy
    @profil = Profil.find(params[:id])
    @profil.destroy
    redirect_to profil_path, status: :see_other
  end

  private

  def profil_params
    params.require(:profil).permit(:name, :birth_date, :email, :password, :gender)
  end

end
