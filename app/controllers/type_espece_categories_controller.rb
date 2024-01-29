class TypeEspeceCategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :new, :create, :edit, :update, :destroy]

  def index
    @typeEspeceCategories = policy_scope(TypeEspeceCategorie)

    if params[:biotop_categorie].present?
      @biotop_categorie = params[:biotop_categorie]
      @typeEspeceCategories = TypeEspeceCategorie.joins(:biotop).where(biotops: { categorie: @biotop_categorie }).all
    else
      @typeEspeceCategories = TypeEspeceCategorie.all
    end
  end


  def new
    @typeEspeceCategorie = TypeEspeceCategorie.new
    authorize @typeEspeceCategorie
  end

  def create
    @typeEspeceCategorie = TypeEspeceCategorie.new(typeEspeceCategorie_params)
    @typeEspeceCategorie.user = current_user
    authorize @typeEspeceCategorie
    puts params.inspect

    if @typeEspeceCategorie.save
      redirect_to moncompte_path, notice: 'TypeEspeceCategorie créé avec succès!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @typeEspeceCategorie = TypeEspeceCategorie.find(params[:id])
    authorize @typeEspeceCategorie
  end

  def update
    @typeEspeceCategorie = TypeEspeceCategorie.find(params[:id])
    @typeEspeceCategorie.update(typeEspeceCategorie_params)
    authorize @typeEspeceCategorie
    @typeEspeceCategorie.save
    redirect_to moncompte_path, notice: 'TypeEspeceCategorie mis à jour avec succès!'
  end

  def destroy
    @typeEspeceCategorie = TypeEspeceCategorie.find(params[:id])
    authorize @typeEspeceCategorie
    @typeEspeceCategorie.destroy
    redirect_to moncompte_path, status: :see_other
  end

  private

  def typeEspeceCategorie_params
    params.require(:type_espece_categorie).permit(:biotop_id, :categorie, :photo)
  end
end
