class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :merlimontdavant, :about, :dashboard, :faune ]

  def home
    @activites = Activite.first(5)
  end

  def merlimontdavant
  end

  def about
  end

  # attention enlever le skip authenticate pour dashboard avant production
  def dashboard
    @activites = Activite.order(created_at: :asc)
  end

  def faune
  end

end
