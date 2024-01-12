class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :merlimontdavant, :about, :dashboard ]

  def home
  end

  def merlimontdavant
  end

  def about
  end

  # attention enlever le skip authenticate pour dashboard avant production
  def dashboard
    @activites = Activite.all
  end

end
