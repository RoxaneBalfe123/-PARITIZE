class CompaniesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @companies = Company.all
    # if params[:query].present?
    #@company = Company.search_by_name(params[:query])and search by category
    #else
    # @companies = Company.all
    #end
  end
end
