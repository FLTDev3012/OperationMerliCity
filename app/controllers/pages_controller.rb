class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :merlimontdavant ]

  def home
  end

  def merlimontdavant
  end

end
