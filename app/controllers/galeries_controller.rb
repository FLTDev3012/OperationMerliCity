class GaleriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]


  def new
    @galerie = Galerie.new
    authorize @galerie
  end

  def create
    @galerie = Galerie.new(galerie_params)
    authorize @galerie

    if @galerie.save
      redirect_to galerie_path(@galerie), notice: 'Galerie créé avec succès!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @galerie = Galerie.find(params[:id])
    authorize @galerie
  end

  def update
    @galerie = Galerie.find(params[:id])
    @galerie.update(galerie_params)
    authorize @galerie
    @galerie.save
    redirect_to moncompte_path, notice: 'Galerie mis à jour avec succès!'
  end

  def destroy
    @galerie = Galerie.find(params[:id])
    authorize @galerie
    @galerie.destroy
    redirect_to moncompte_path, status: :see_other
  end

  private

  def galerie_params
    params.require(:galerie).permit(:title, :photo)
  end
end
