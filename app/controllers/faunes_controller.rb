class FaunesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  def index
    if params[:categorie].present?
      @categorie = params[:categorie]
      @faunes = Faune.where(categorie: params[:categorie]).order(:nom)
    else
      @faunes = Faune.order(:nom)
    end
  end

  def show
    @faune = Faune.find(params[:id])
  end

  def new
    @faune = Faune.new
  end

  def create
    @faune = Faune.new(faune_params)

    if @faune.save
      redirect_to dashboard_path, notice: 'Faune créé avec succès!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @faune = Faune.find(params[:id])
  end

  def update
    @faune = Faune.find(params[:id])
    @faune.update(faune_params)
    @faune.save
    redirect_to dashboard_path, notice: 'Faune mis à jour avec succès!'
  end

  def destroy
    @activite = Activite.find(params[:id])
    @faune.destroy
    redirect_to dashboard_path, status: :see_other
  end

  private

  def faune_params
    params.require(:faune).permit(:categorie, :nom, :description, :photo)
  end
end
