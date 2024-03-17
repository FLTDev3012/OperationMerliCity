class ActivitesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show new create edit update destroy]

  def index
    @activites = policy_scope(Activite)
  end

  def show
    @activite = Activite.find(params[:id])
    authorize @activite
  end

  def new
    @activite = Activite.new
    authorize @activite
  end

  def create
    @activite = Activite.new(activite_params)
    authorize @activite
    if @activite.save
      redirect_to dashboard_path, notice: 'Activité créée avec succès!'
    else
      render :new, status: :unprocessable_entity
    end
  end


  def edit
    @activite = Activite.find(params[:id])
    authorize @activite
  end

  def update
    @activite = Activite.find(params[:id])
    authorize @activite
    if @activite.update(activite_params)
      redirect_to dashboard_path, notice: 'Activité mise à jour avec succès!'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @activite = Activite.find(params[:id])
    authorize @activite
    @activite.destroy
    redirect_to dashboard_path, status: :see_other
  end

  private

  def activite_params
    params.require(:activite).permit(:title, :description, :photo, :address, :phone, :price_a, :price_b,
                                     :luns, :lunbs, :lunbe, :lune,
                                     :mars, :marbs, :marbe, :mare,
                                     :mers, :merbs, :merbe, :mere,
                                     :jeus, :jeubs, :jeube, :jeue,
                                     :vens, :venbs, :venbe, :vene,
                                     :sams, :sambs, :sambe, :same,
                                     :dims, :dimbs, :dimbe, :dime)
  end


end
