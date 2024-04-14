class OldpicsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]


  def new
    @oldpic = Oldpic.new
    authorize @oldpic
  end

  def create
    @oldpic = Oldpic.new(oldpic_params)
    authorize @oldpic

    if @oldpic.save
      redirect_to oldpic_path(@oldpic), notice: 'Oldpic créé avec succès!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @oldpic = Oldpic.find(params[:id])
    authorize @oldpic
  end

  def update
    @oldpic = Oldpic.find(params[:id])
    @oldpic.update(oldpic_params)
    authorize @oldpic
    @oldpic.save
    redirect_to moncompte_path, notice: 'Oldpic mis à jour avec succès!'
  end

  def destroy
    @oldpic = Oldpic.find(params[:id])
    authorize @oldpic
    @oldpic.destroy
    redirect_to moncompte_path, status: :see_other
  end

  private

  def oldpic_params
    params.require(:oldpic).permit(:title, :photo)
  end
end
