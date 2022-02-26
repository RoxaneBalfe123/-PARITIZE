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
    Bookmark.where(bookmark_id: @company.id, user_id: current_user.id).first.destroy
    redirect_to @company, notice: 'Company is no longer in your favorites dashboard'
  end
end
