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
    @company.user = current_user
    if @company.save
      average_rating = (company_params[:women_c_level].to_i +
      company_params[:women_mid_senior_level].to_i + company_params[:women_junior_level].to_i).to_f / 3
      @gender_rating = GenderRating.new(c_rating: company_params[:women_c_level],
        mid_rating: company_params[:women_mid_senior_level],
        junior_rating: company_params[:women_junior_level],
        average_rating: average_rating)
      @gender_rating.company = @company
      @gender_rating.save
      redirect_to gender_rating_path(@gender_rating)
      flash[:notice] = "Thanks for submitting"
    else
      render :new
      flash[:notice] = "This is not working"
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


end
