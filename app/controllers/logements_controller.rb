class LogementsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  def index
    if params[:categorie].present?
      @categorie = params[:categorie]
      @logements = policy_scope(Logement).where(categorie: params[:categorie])
    else
      @logements = policy_scope(Logement)
    end
  end

  def show
    @logement = Logement.find(params[:id])
    authorize @logement
  end

  def new
    @logement = Logement.new
    authorize @logement
  end

  def create
    @logement = Logement.new(logement_params)
    authorize @logement

    if @logement.save
      redirect_to dashboard_path, notice: 'Logement créé avec succès!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @logement = Logement.find(params[:id])
    authorize @logement
  end

  def update
    @logement = Logement.find(params[:id])
    authorize @logement
    @logement.update(logement_params)
    @logement.save
    redirect_to dashboard_path, notice: 'Logement mis à jour avec succès!'
  end

  def destroy
    @activite = Activite.find(params[:id])
    authorize @logement
    @logement.destroy
    redirect_to dashboard_path, status: :see_other
  end

  private

  def logement_params
    params.require(:logement).permit(:categorie, :title, :address, :description, :price, :email, :phone, :photo)
  end
end
