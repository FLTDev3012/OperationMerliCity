class FaunesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  def index
    @faunes = policy_scope(Faune)
    if params[:categorie].present?
      @categorie = params[:categorie]
      @faunes = Faune.where(categorie: params[:categorie]).order(:nom)
    else
      @faunes = Faune.order(:nom)
    end
  end

  def show
    @faune = Faune.find(params[:id])
    authorize @faune
  end

  def new
    @faune = Faune.new
    authorize @faune
  end

  def create
    @faune = Faune.new(faune_params)
    @faune.user = current_user
    authorize @faune

    if @faune.save
      redirect_to faune_path(@faune), notice: 'Faune créé avec succès!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @faune = Faune.find(params[:id])
    authorize @faune
  end

  def update
    @faune = Faune.find(params[:id])
    @faune.update(faune_params)
    authorize @faune
    @faune.save
    redirect_to moncompte_path, notice: 'Faune mis à jour avec succès!'
  end

  def destroy
    @faune = Faune.find(params[:id])
    authorize @faune
    @faune.destroy
    redirect_to moncompte_path, status: :see_other
  end

  private

  def faune_params
    params.require(:faune).permit(:user_id, :categorie, :nom, :description, :photo)
  end
end
