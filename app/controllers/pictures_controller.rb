class PicturesController < ApplicationController
  before_action :set_profil, only: %i[new create show edit update destroy]

  def index
    @pictures = Picture.all
  end

  def show
    # @picture = Picture.find[params[:id]]
  end

  def new
    # @profil = Profil.find(params[:profil_id])
    @picture = Picture.new
  end

  def create
    # @picture = Picture.new(params[:picture])
    @picture = Picture.new(picture_params)
    @picture.profil = @profil
    @picture.save
    redirect_to picture_path(@picture)
  end

  def edit
    # @picture = Picture.find(params[:id])
  end

  def update
    # @picture = Picture.find(params[:id])
    @picture.update(picture_params)
    redirect_to picture_path(@picture)
  end

  def destroy
    # @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to picture_path, status: :see_other
    #   redirect_to picture_path(@picture.profil), status: :see_other
  end

  private

  def set_profil
    @profil = Profil.find(params[:profil_id])
  end

  def picture_params
    params.require(:picture).permit(:comment, :image_url)
  end
end
