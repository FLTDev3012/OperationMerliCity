class EspecesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  def index
    @especes = policy_scope(Espece)
    if params[:categorie].present?
      @categorie = params[:categorie]
      @especes = Espece.where(categorie: params[:categorie]).order(:nom)
    else
      @especes = Espece.order(:nom)
    end
  end

  def show
    @espece = Espece.find(params[:id])
    authorize @espece
  end

  def new
    @espece = Espece.new
    authorize @espece
  end

  def create
    @espece = Espece.new(espece_params)
    @espece.user = current_user
    authorize @espece

    if @espece.save
      redirect_to moncompte_path, notice: 'Espece créé avec succès!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @espece = Espece.find(params[:id])
    authorize @espece
  end

  def update
    @espece = Espece.find(params[:id])
    @espece.update(espece_params)
    authorize @espece
    @espece.save
    redirect_to moncompte_path, notice: 'Espece mis à jour avec succès!'
  end

  def destroy
    @espece = Espece.find(params[:id])
    authorize @espece
    @espece.destroy
    redirect_to moncompte_path, status: :see_other
  end

  private

  def espece_params
    params.require(:espece).permit(:espece_categorie_id,:nom, :description, :photo)
  end
end
