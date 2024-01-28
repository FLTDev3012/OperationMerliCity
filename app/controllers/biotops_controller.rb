class BiotopsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :create, :edit, :update, :destroy]


  def new
    @biotop = Biotop.new
    authorize @biotop
  end

  def create
    @biotop = Biotop.new(biotop_params)
    @biotop.user = current_user
    authorize @biotop

    if @biotop.save
      redirect_to moncompte_path, notice: 'Biotop créé avec succès!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @biotop = Biotop.find(params[:id])
    authorize @biotop
  end

  def update
    @biotop = Biotop.find(params[:id])
    @biotop.update(biotop_params)
    authorize @biotop
    @biotop.save
    redirect_to moncompte_path, notice: 'Biotop mis à jour avec succès!'
  end

  def destroy
    @biotop = Biotop.find(params[:id])
    authorize @biotop
    @biotop.destroy
    redirect_to moncompte_path, status: :see_other
  end

  private

  def biotop_params
    params.require(:biotop).permit(:categorie)
  end
end
