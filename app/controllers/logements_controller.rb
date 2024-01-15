class LogementsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  def index
    if params[:categorie].present?
      @categorie = params[:categorie]
      @logements = Logement.where(categorie: params[:categorie])
    else
      @logements = Logement.all
    end
  end

  def show
    @logement = Logement.find(params[:id])
  end

  def new
    @logement = Logement.new
  end

  def create
    @logement = Logement.new(logement_params)

    if @logement.save
      redirect_to dashboard_path, notice: 'Logement créé avec succès!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @logement = Logement.find(params[:id])
  end

  def update
    @logement = Logement.find(params[:id])
    @logement.update(logement_params)
    @logement.save
    redirect_to dashboard_path, notice: 'Logement mis à jour avec succès!'
  end

  def destroy
    @activite = Activite.find(params[:id])
    @logement.destroy
    redirect_to dashboard_path, status: :see_other
  end

  private

  def logement_params
    params.require(:logement).permit(:categorie, :title, :description, :price, :email, :phone, :photo)
  end
end
