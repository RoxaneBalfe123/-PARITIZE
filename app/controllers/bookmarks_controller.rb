class BookmarksController < ApplicationController
  def create
    @company = Company.find(params[:company_id])
    @bookmark = Bookmark.new
    @bookmark.company_id = @company.id
    @bookmark.user_id = current_user.id
    if @bookmark.save
      redirect_to user_show_path(id: current_user.id)
    else
      flash[:notice] = 'Error: bookmark did not save!'
      redirect_to company_path(id: @company.id)
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to user_show_path(current_user)
  end
end
