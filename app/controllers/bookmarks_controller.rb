class BookmarksController < ApplicationController
  def create
    @company = Company.find(params[:company_id])
    @bookmark = Bookmark.new
    @bookmark.company_id = @company.id
    @bookmark.user_id = current_user.id
    if @bookmark.save
      redirect_to companies_path
    else
      flash[:notice] = 'Error: bookmark did not save!'
      redirect_to company_path(id: @company.id)
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to companies_path
  end
end
