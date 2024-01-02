class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :merlimontdavant, :about ]

  def home
  end

  def merlimontdavant
  end

  def about
  end

end
