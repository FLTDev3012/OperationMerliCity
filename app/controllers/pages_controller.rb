class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :merlimontdavant, :about, :dashboard, :fauneflore, :faunecat, :univers ]

  def home
    @activites = Activite.first(5)
  end

  def galerie
  end

  def merlimontdavant
  end

  def about
  end

  # attention enlever le skip authenticate pour dashboard avant production
  def dashboard
    @activites = Activite.order(created_at: :asc)
  end

  def fauneflore
    @resource = User.new
    @resource_name = :user
    render 'pages/fauneflore'
  end

  def univers
  end

  def moncompte
    @user = current_user

    if @user.admin?
      @user_recherche = Faune.all
    else
      @user_recherche = Faune.where(user: @user)
    end
  end

end
