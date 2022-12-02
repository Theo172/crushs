class ProfilsController < ApplicationController
  before_action :get_user

  def index
    @profils = @user.Profil.all
  end

  def show
    @profil = @user.Profil.find(params[:id])
  end

  def new
    @profil = @user.Profil.new
  end

  def create
    @profil = @user.Profil.new(profil_params)
    @profil.save
    redirect_to edit_profil_path(@profil)
  end

  def edit
    @profil = Profil.find(@user.profil.(params[:id]))
  end

  def update
    @profil = Profil.find(@user.profil.(params[:id]))
    @profil.update(profil_params)
    redirect_to profil_path(@profil)
  end

  def destroy
    @profil = Profil.find(@user.profil.(params[:id]))
    @profil.destroy
    redirect_to profil_path, status: :see_other
  end

  private

  def profil_params
    params.require(:profil).permit(:name, :birth_date, :email, :password, :gender)
  end

  def get_user
    @user = Post.find(params[:user_id])
  end

end
