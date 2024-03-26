class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :merlimontdavant, :about, :fauneflore, :faunecat, :univers, :galerie, :azerty ]

  def home
    @activites = Activite.first(5)

    @touteactivites = Activite.all
    @markers = @touteactivites.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude,
        info_window_html: render_to_string(partial: "activites/infos_window", locals: {flat: flat}),
        marker_html: render_to_string(partial: "activites/marker", locals: {flat: flat})
      }
    end

    @toutslogements = Logement.all
    @markerslog = @toutslogements.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude,
        info_window_html: render_to_string(partial: "logements/infos_window", locals: {flat: flat}),
        marker_html: render_to_string(partial: "logements/marker", locals: {flat: flat})
      }
    end

  end

  def galerie
  end

  def merlimontdavant
  end



  # attention enlever le skip authenticate pour dashboard avant production
  def dashboard
    @activites = Activite.order(created_at: :asc)
    @logements = Logement.order(created_at: :asc)
    @biotopes = Biotop.order(created_at: :asc)
    @typeEspeceCategories = TypeEspeceCategorie.order(categorie: :asc)
    @especeCategories = EspeceCategorie.order(categorie: :asc)
    @especes = Espece.order(nom: :asc)


  end

  def fauneflore
    @user = current_user

    @resource = User.new
    @resource_name = :user
    render 'pages/fauneflore'
  end

  def about
  end

  def univers
    @activites = Activite.all.first(5)
  end


  def moncompte
    @user = current_user

    if @user.admin?
      @user_recherche = Espece.all
    else
      @user_recherche = Espece.where(user: @user)
    end

  end

end
