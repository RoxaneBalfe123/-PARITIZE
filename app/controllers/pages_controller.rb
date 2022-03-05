class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home about]

  def home
    @companies = Company.all
  end

  def about
  end
end
