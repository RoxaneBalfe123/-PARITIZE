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


  def show
    @company = Company.find(params[:id])
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to company_path(@company)
    else
      render :new
    end
  end

  private

  def company_params
    params.require(:company)
          .permit(:company_name, :company_description, :hq_location, :company_size, :type_of_company, :women_c_level,
                  :men_c_level, :women_mid_senior_level, :men_mid_senior_level, :women_junior_level, :men_junior_level,
                  :photo)
  end


end
