class CompaniesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:search].present?
      @companies = Company.search_by_company_name(params[:search][:company_name])
    else
      @companies = Company.all
    end
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

  def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])
    @company.update(company_params)
    redirect_to company_path(@company), notice: "Company was successfully updated"
  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy
    redirect_to companies_path, notice: "Company was successfully deleted"
  end

  private

  def company_params
    params.require(:company)
          .permit(:company_name, :company_description, :hq_location, :company_size, :type_of_company, :women_c_level,
                  :men_c_level, :women_mid_senior_level, :men_mid_senior_level, :women_junior_level, :men_junior_level,
                  :photo)
  end

  def company_name_and_type
    params.require(:company).permit(:company_name)
  end


end
