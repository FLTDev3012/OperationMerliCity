class ActivitesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show new create edit update destroy]

  def index
    @activites = Activite.all
  end

  def show
    @activite = Activite.find(params[:id])
  end

  def new
    @activite = Activite.new
  end

  def create
    @activite = Activite.new(activite_params)
    if @activite.save
      redirect_to dashboard_path, notice: 'Activité créée avec succès!'
    else
      render :new, status: :unprocessable_entity
    end
  end


  def edit
    @activite = Activite.find(params[:id])
  end

  def update
      @activite = Activite.find(params[:id])
      @activite.update(activite_params)
      @activite.save
      redirect_to dashboard_path, notice: 'Activité mise à jour avec succès!'
  end

  def destroy
    @activite = Activite.find(params[:id])
    @activite.destroy
    redirect_to dashboard_path, status: :see_other
  end

  private

  def activite_params
    params.require(:activite).permit(:title, :description, :photo)
  end

end
