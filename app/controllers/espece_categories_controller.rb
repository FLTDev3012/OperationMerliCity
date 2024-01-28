class EspeceCategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  def index
    @especeCategories = policy_scope(EspeceCategorie)
    if params[:categorie].present?
      @categorie = params[:categorie]
      @especeCategories = EspeceCategorie.where(categorie: params[:categorie]).order(:nom)
    else
      @especeCategories = EspeceCategorie.order(:nom)
    end
  end

  def show
    @especeCategorie = EspeceCategorie.find(params[:id])
    authorize @especeCategorie
  end

  def new
    @especeCategorie = EspeceCategorie.new
    authorize @especeCategorie
  end

  def create
    @especeCategorie = EspeceCategorie.new(especeCategorie_params)
    @especeCategorie.user = current_user
    authorize @especeCategorie

    if @especeCategorie.save
      redirect_to moncompte_path, notice: 'EspeceCategorie créé avec succès!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @especeCategorie = EspeceCategorie.find(params[:id])
    authorize @especeCategorie
  end

  def update
    @especeCategorie = EspeceCategorie.find(params[:id])
    @especeCategorie.update(especeCategorie_params)
    authorize @especeCategorie
    @especeCategorie.save
    redirect_to moncompte_path, notice: 'EspeceCategorie mis à jour avec succès!'
  end

  def destroy
    @especeCategorie = EspeceCategorie.find(params[:id])
    authorize @especeCategorie
    @especeCategorie.destroy
    redirect_to moncompte_path, status: :see_other
  end

  private

  def especeCategorie_params
    params.require(:espece_categorie).permit(:type_espece_categorie_id, :categorie, :photo)
  end
end
